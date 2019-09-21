----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
--
-- Infrared decoder and logical analyzer example
--
-- Part 1. Display the last command received from the ir_nec_decoder entity in the seven segment displays
--         * if the command is not valid (bits 23 to 31 not the complement of bits 16 to 23), the two rightmost displays will blink with a frequency of 1 Hz
--         * when a new command is received ledg(8) will be turned on during 0.2s
--
-- Part 2. Draw (VGA output) the state of irda_rxd and of sw(17 downto 0), sampled at 10 kHz
--         * the display is updated whenever one of these signals changes
--         * the red vertical cursor can be moved using key(3): fast to the left, key(2): to the left, key(1): to the right, key(0): fast to the right
--
-- TO DO. Display the cursor position (in hexadecimal) in the top area of the display
--

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
use     work.vga_config.all;

entity ir_vga_logic_analyzer_tl is
  port
  (
    clock_50 : in std_logic;

    key : in std_logic_vector( 3 downto 0);
    sw  : in std_logic_vector(17 downto 0);

    ledg : out std_logic_vector(8 downto 0);
    hex0 : out std_logic_vector(6 downto 0);
    hex1 : out std_logic_vector(6 downto 0);
    hex2 : out std_logic_vector(6 downto 0);
    hex3 : out std_logic_vector(6 downto 0);
    hex4 : out std_logic_vector(6 downto 0);
    hex5 : out std_logic_vector(6 downto 0);
    hex6 : out std_logic_vector(6 downto 0);
    hex7 : out std_logic_vector(6 downto 0);

    vga_clk     : out std_logic;
    vga_hs      : out std_logic;
    vga_vs      : out std_logic;
    vga_sync_n  : out std_logic;
    vga_blank_n : out std_logic;
    vga_r       : out std_logic_vector(7 downto 0);
    vga_g       : out std_logic_vector(7 downto 0);
    vga_b       : out std_logic_vector(7 downto 0);

    irda_rxd : in std_logic
  );
end ir_vga_logic_analyzer_tl;

architecture v1 of ir_vga_logic_analyzer_tl is
  constant clock_frequency : real := vga_frequency;
  signal clock : std_logic;
  --
  -- Part 1
  --
  signal data        : std_logic_vector(31 downto 0); -- received command
  signal valid       : std_logic;                     -- received command valid pulse
  signal blink       : std_logic := '1';              -- blink status ('1' -> display, '0' -> blank)
  signal blink_pulse : std_logic;                     -- 2 Hz blink toggle pulse (half period of 0.5 seconds gives a frequency of 2 Hz)
  signal alarm       : std_logic := '0';              -- ledg(8) status
  signal alarm_pulse : std_logic;                     -- 5 Hz alarm off pulse (duration of 0.2 seconds gives a frequency of 5 Hz)
  --
  -- Part 2
  --
  constant n_signals : integer := 19; -- irda_rdx plus the 18 switches
  --
  -- Waveform recorder
  --
  constant sampling_frequency : real := 10.0e3; -- sampling frequency (in Hz)
  constant dead_time          : real := 0.5;    -- minimum delay between recordings
  signal sample_pulse : std_logic;                                                     -- sampling pulse
  signal recording    : std_logic := '0';                                              -- active when recording a waveform
  signal dead_counter : integer range 0 to integer(dead_time*sampling_frequency) := 0; -- used to force a delay between recordings
  signal write_data_0 : std_logic_vector(n_signals-1 downto 0); -- data to record
  signal write_data_1 : std_logic_vector(n_signals-1 downto 0); --   delayed one sample (if different from write_data_0 start a new recording)
  signal write_data_2 : std_logic_vector(n_signals-1 downto 0); --   delayed two samples (this is the one recorded)
  signal write_end_0  : std_logic;                              -- end of write buffer indicator
  signal write_end_1  : std_logic;                              --   and its delayed version, to detect a '0' to '1' transition
  --
  -- VGA data
  --
  signal vga_data_0   : vga_data_t;
  signal vga_data_1   : vga_data_t;
  signal vga_data_2   : vga_data_t;
  signal vga_rgb_2    : vga_rgb_t;
  signal read_addr_0  : integer range 0 to vga_width-1;
  signal read_data_1  : std_logic_vector(n_signals-1 downto 0);
  signal cursor_pos   : integer range 0 to vga_width-1 := 2;    -- horizontal position of the cursor (red vertical line)
  signal middle_1     : std_logic;                              -- asserted when the VGA y coordinate is inside a waveform area
  signal wave_1       : std_logic_vector(2 downto 0);           -- asserted when the VGA y coordinate is in a top, middle, or bottom waveline position
  signal bit_number_1 : integer range 0 to n_signals-1;         -- number of the signal being displayed (0 on top)
  signal cursor_1     : std_logic;                              -- asserted when the VGA x coordinate is in the cursor position
  signal last_bit_2   : std_logic;                              -- waveform level of the previous pixel
  --
  -- Cursor movement
  --
  constant auto_first : integer := integer(0.5*vga_refresh_rate); -- first auto-repeat delay (0.5 seconds)
  constant auto_other : integer := integer(0.4*vga_refresh_rate); -- other auto-repeat delays (0.1 seconds, note that 0.4 = 0.5-0.1)
  signal key_0     : std_logic_vector(3 downto 0); -- the registered current state of key(3 downto 0)
  signal key_1     : std_logic_vector(3 downto 0); -- the precious state of key(3 downto 0)
  signal k0_count  : integer range 0 to auto_first;   -- key(0) counter
  signal k1_count  : integer range 0 to auto_first;   -- key(1) counter
  signal k2_count  : integer range 0 to auto_first;   -- key(2) counter
  signal k3_count  : integer range 0 to auto_first;   -- key(3) counter
begin
  clk : entity work.vga_clock_generator(v1)
               port map(clock_50 => clock_50,vga_clock => clock);
  --
  -- Part 1
  --
  ir : entity work.ir_nec_decoder(v1)
              generic map(clock_frequency => clock_frequency)
              port map(clock => clock,irda_rxd => irda_rxd,data => data,valid => valid);
  pb : entity work.pulse_generator(v1)
              generic map(clock_frequency => clock_frequency,pulse_frequency => 2.0)
              port map(clock => clock,reset => valid,pulse => blink_pulse);
  pa : entity work.pulse_generator(v1)
              generic map(clock_frequency => clock_frequency,pulse_frequency => 5.0)
              port map(clock => clock,reset => valid,pulse => alarm_pulse);
  d0 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(0*4+3 downto 0*4+0),enable => '1',  leds => hex0);
  d1 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(1*4+3 downto 1*4+0),enable => '1',  leds => hex1);
  d2 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(2*4+3 downto 2*4+0),enable => '1',  leds => hex2);
  d3 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(3*4+3 downto 3*4+0),enable => '1',  leds => hex3);
  d4 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(4*4+3 downto 4*4+0),enable => '1',  leds => hex4);
  d5 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(5*4+3 downto 5*4+0),enable => '1',  leds => hex5);
  d6 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(6*4+3 downto 6*4+0),enable => blink,leds => hex6);
  d7 : entity work.seven_segment_decoder(v1) port map(code => '0' & data(7*4+3 downto 7*4+0),enable => blink,leds => hex7);
  process(clock) is
  begin
    if rising_edge(clock) then
      if valid = '1' then
        blink <= '1';
        alarm <= '1'; -- on
      else
        if alarm_pulse = '1' then
          alarm <= '0'; -- off
        end if;
        if blink_pulse = '1' and data(31 downto 24) /= not data(23 downto 16) then
          blink <= not blink; -- toggle
        end if;
      end if;
    end if;
  end process;
  ledg(8) <= alarm;
  --
  -- Part 2 (waveform recorder, includes fetching the waveform data for the VGA image)
  --
  pg : entity work.pulse_generator(v1)
              generic map(clock_frequency => clock_frequency,pulse_frequency => sampling_frequency)
              port map(clock => clock,reset => '0',pulse => sample_pulse);
  wr : entity work.waveform_recorder(v1)
              generic map(buffer_size => vga_width,word_size => n_signals)
              port map(clock => clock,reset => '0',
                       write_enable_0 => recording and sample_pulse,write_data_0 => write_data_2,write_end_1 => write_end_0,
                       read_addr_0 => read_addr_0,read_data_1 => read_data_1);
  process(clock) is
  begin
    if rising_edge(clock) then
      if sample_pulse = '1' then
        write_data_0 <= sw(17 downto 0) & irda_rxd;
        write_data_1 <= write_data_0;
        write_data_2 <= write_data_1;
        if dead_counter = 0 and recording = '0' and write_data_0 /= write_data_1 then
          recording <= '1';
          dead_counter <= dead_counter'high; -- use largest possible dead_counter value
        elsif recording = '0' and dead_counter /= 0 then
          dead_counter <= dead_counter-1;
        end if;
      end if;
      write_end_1 <= write_end_0;
      if write_end_0 = '1' and write_end_1 = '0' then
        recording <= '0'; -- stop recording as soon as write_end goes from '0' to '1'
      end if;
    end if;
  end process;
  --
  -- Part 2 (the VGA stuff)
  --
  vc : entity work.vga_controller(v1)
              port map(clock => clock,reset => '0',vga_data_0 => vga_data_0);
  vo : entity work.vga_output(v1)
              port map(clock => clock,
                       vga_data => vga_data_2,vga_rgb => vga_rgb_2,
                       vga_clk => vga_clk,
                       vga_hs => vga_hs,vga_vs => vga_vs,vga_sync_n => vga_sync_n,vga_blank_n => vga_blank_n,
                       vga_r => vga_r,vga_g => vga_g,vga_b => vga_b);
  read_addr_0 <= vga_data_0.x when vga_data_0.x < vga_width else 0;
  process(clock) is
  begin
    if rising_edge(clock) then
      --
      -- Stage 0 -> 1 (compute region selection signals and access waveform memory)
      --
      vga_data_1 <= vga_data_0;
      middle_1 <= '0';
      bit_number_1 <= 0;
      wave_1 <= "000";
      cursor_1 <= '0';
      if vga_data_0.y mod 32 >= 2 and vga_data_0.y mod 32 < 30 and vga_data_0.y >= 32 and vga_data_0.y < 32*(1+n_signals) then
        middle_1 <= '1';
        bit_number_1 <= vga_data_0.y/32-1;
        if vga_data_0.y mod 32 = 8 then
          wave_1(2) <= '1'; -- top line
        end if;
        if vga_data_0.y mod 32 > 8 and vga_data_0.y mod 32 < 24 then
          wave_1(1) <= '1'; -- middle
        end if;
        if vga_data_0.y mod 32 = 24 then
          wave_1(0) <= '1'; -- bottom line
        end if;
      end if;
      if vga_data_0.x = cursor_pos then
        cursor_1 <= '1';
      end if;
      --
      -- stage 1 -> 2 (choose color)
      --
      vga_data_2 <= vga_data_1;
      last_bit_2 <= read_data_1(bit_number_1);
      -- default color: black
      vga_rgb_2.r <= X"00";
      vga_rgb_2.g <= X"00";
      vga_rgb_2.b <= X"00";
      -- red vertical line every 16 pixels in the horizontal direction in each waveform area
      if middle_1 = '1' and vga_data_1.x mod 16 = 2 then
        vga_rgb_2.r <= X"80";
      end if;
      -- waveform areas in dark blue
      if middle_1 = '1' then
        vga_rgb_2.b <= X"40";
      end if;
      -- red cursor in each waveform area
      if middle_1 = '1' and cursor_1 = '1' then
        vga_rgb_2.r <= X"FF";
      end if;
      -- waveform logic level guide lines in dark green
      if wave_1(2) = '1' or wave_1(0) = '1' then
        vga_rgb_2.g <= X"60";
      end if;
      -- waveform in green and waveform transition in darker green
      if (wave_1(2) = '1' and read_data_1(bit_number_1) = '1') or (wave_1(0) = '1' and read_data_1(bit_number_1) = '0') then
        vga_rgb_2.g <= X"FF";
      elsif (wave_1(1) = '1' and read_data_1(bit_number_1) /= last_bit_2 and vga_data_1.x /= 0) then
        vga_rgb_2.g <= X"C0";
      end if;
    end if;
  end process;
  --
  -- Part 2 (cursor movement)
  --
  process(clock,vga_data_0.end_of_frame) is
  begin
    if rising_edge(clock) and vga_data_0.end_of_frame = '1' then
      key_0 <= key;
      key_1 <= key_0;
      if (key_0(0) = '0' and key_1(0) = '1') or k0_count = auto_first then
        if key_0(0) = '0' and key_1(0) = '1' then
          k0_count <= 0;
        else
          k0_count <= auto_other;
        end if;
        if cursor_pos < vga_width-16 then
          cursor_pos <= cursor_pos+16;
        else
          cursor_pos <= vga_width-1;
        end if;
      elsif key_0(0) = '0' then
        k0_count <= k0_count+1;
      end if;
      if (key_0(1) = '0' and key_1(1) = '1') or k1_count = auto_first then
        if key_0(1) = '0' and key_1(1) = '1' then
          k1_count <= 0;
        else
          k1_count <= auto_other;
        end if;
        if cursor_pos < vga_width-1 then
          cursor_pos <= cursor_pos+1;
        end if;
      elsif key_0(1) = '0' then
        k1_count <= k1_count+1;
      end if;
      if (key_0(2) = '0' and key_1(2) = '1') or k2_count = auto_first then
        if key_0(2) = '0' and key_1(2) = '1' then
          k2_count <= 0;
        else
          k2_count <= auto_other;
        end if;
        if cursor_pos >= 1 then
          cursor_pos <= cursor_pos-1;
        end if;
      elsif key_0(2) = '0' then
        k2_count <= k2_count+1;
      end if;
      if (key_0(3) = '0' and key_1(3) = '1') or k3_count = auto_first then
        if key_0(3) = '0' and key_1(3) = '1' then
          k3_count <= 0;
        else
          k3_count <= auto_other;
        end if;
        if cursor_pos >= 16 then
          cursor_pos <= cursor_pos-16;
        else
           cursor_pos <= 0;
        end if;
      elsif key_0(3) = '0' then
        k3_count <= k3_count+1;
      end if;
    end if;
  end process;
  ledg(0) <= not key_0(0);
  ledg(1) <= '0';
  ledg(2) <= not key_0(1);
  ledg(3) <= '0';
  ledg(4) <= not key_0(2);
  ledg(5) <= '0';
  ledg(6) <= not key_0(3);
  ledg(7) <= '0';
end v1;
