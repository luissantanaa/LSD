----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
--
-- LCD controller example
--
-- While key(2) is pressed, reset the LCD display
-- When leaving the reset state:
-- * the shape of character 0 is redefined to be a triangle,
-- * the text "LSD  LCD example" is written in the first line of the display,
-- * an internal signal n (equal to 16*n1+n0), is initialized to 0
-- After leaving the reset state:
-- * the text "char(UV) = W", where U is n1 (in hexadecimal), V is n0 (in hexadecimal), and W is the character with code n, is displayed on the second line
-- * when key(0) is pressed, n is incremented (with auto-repeat feature)
-- * when key(1) is pressed, n is decremented (with auto-repeat feature)
-- Whenever there is an increment of n a "blop" sound is produced (left and right channels with the same information)
-- Whenever there is a decrement of n a "blop" sound is produced (left and right channels with opposite information)
--

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;

entity lcd_audio_tl is
  port
  (
    clock_50 : in std_logic;

    key : in std_logic_vector(2 downto 0);

    lcd_on   : out   std_logic;
    lcd_blon : out   std_logic;
    lcd_rw   : out   std_logic;
    lcd_en   : out   std_logic;
    lcd_rs   : out   std_logic;
    lcd_data : inout std_logic_vector(7 downto 0);

    i2c_sclk : inout std_logic;
    i2c_sdat : inout std_logic;

    aud_xck     : out std_logic;
    aud_bclk    : in  std_logic;
    aud_adclrck : in  std_logic;
    aud_adcdat  : in  std_logic;
    aud_dacdat  : out std_logic
  );
end lcd_audio_tl;

architecture v1 of lcd_audio_tl is
  constant clock_frequency : real := 50.0e6;
  signal clock : std_logic;
  --
  -- Events related to key presses
  --
  signal reset_n               : std_logic; -- negative logic!
  signal key0                  : std_logic;
  signal key0_pressed_pulse    : std_logic;
  signal key0_autorepeat_pulse : std_logic;
  signal key1                  : std_logic;
  signal key1_pressed_pulse    : std_logic;
  signal key1_autorepeat_pulse : std_logic;
  --
  -- ROM with the LCD instructions to perform
  --
  type lcd_program_t is array(0 to 63) of std_logic_vector(8 downto 0);
  constant lcd_program : lcd_program_t :=
  (
    -- redefine the image of character 0
    -- indices 0 to 8
    b"0_01_000_000", -- set CGRAM address
    b"1_000_00000",
    b"1_000_00000",
    b"1_000_00001",
    b"1_000_00011",
    b"1_000_00111",
    b"1_000_01111",
    b"1_000_11111",
    b"1_000_00000",
    -- first line
    -- indices 9 to 25
    b"0_1_000_0000", -- set DDRAM address
    b"1_0100_1100", -- 'L'
    b"1_0101_0011", -- 'S'
    b"1_0100_0100", -- 'D'
    b"1_0010_0000", -- ' '
    b"1_0010_0000", -- ' '
    b"1_0100_1100", -- 'L'
    b"1_0100_0011", -- 'C'
    b"1_0100_0100", -- 'D'
    b"1_0010_0000", -- ' '
    b"1_0110_0101", -- 'e'
    b"1_0111_1000", -- 'x'
    b"1_0110_0001", -- 'a'
    b"1_0110_1101", -- 'm'
    b"1_0111_0000", -- 'p'
    b"1_0110_1100", -- 'l'
    b"1_0110_0101", -- 'e'
    -- second line data (refreshed all the time)
    -- indiced 26 to 38
    b"0_1_100_0000", -- set DDRAM address
    b"1_0110_0011", -- 'c'
    b"1_0110_1000", -- 'h'
    b"1_0110_0001", -- 'a'
    b"1_0111_0010", -- 'r'
    b"1_0010_1000", -- '('
    b"1_0000_0000", -- index 32: not used (replaced by the correct character code)
    b"1_0000_0000", -- index 33: not used (replaced by the correct character code)
    b"1_0010_1001", -- ')'
    b"1_0010_0000", -- ' '
    b"1_0011_1101", -- '='
    b"1_0010_0000", -- ' '
    b"1_0000_0000", -- index 38: not used (replaced by the correct character code)
    others => b"1_0000_0000"
  );
  --
  -- State
  --
  signal txd_rs_and_data : std_logic_vector(8 downto 0);
  signal txd_request     : std_logic;
  signal txd_accepted    : std_logic := '0';
  signal n               : unsigned(7 downto 0) := "00000000";
  signal index           : integer range 0 to 63 := 0;
  --
  -- Audio
  --
  signal audio_pulse : std_logic;
  signal addr0       : unsigned(11 downto 0) := x"FFF"; -- address used to generate the "blop" sound when key(0) is pressed
  signal addr1       : unsigned(11 downto 0) := x"FFF"; -- address used to generate the "blop" sound when key(1) is pressed
  signal data0       : std_logic_vector(15 downto 0);   -- key(0) "blop" sound sample (mono)
  signal data1       : std_logic_vector(15 downto 0);   -- key(1) "blop" sound sample (mono)
  signal left        : signed(16 downto 0);             -- data0 + data1 (to generate stereo sounds)
  signal right       : signed(16 downto 0);             -- data0 - data1 (to generate stereo sounds)
begin
  clock <= clock_50; -- we prefer our main clock to be named "clock" (perhaps just "clk" would be even better, but "clock" is more explicit)
  --
  -- Debounce keys (with autorepeat for key presses)
  --
  k0 : entity work.debouncer(v1)
              generic map(clock_frequency => clock_frequency,window_duration => 1.0e-4,initial_level => '1')
              port map(clock => clock,dirty => key(0),clean => key0,zero_to_one_pulse => open,one_to_zero_pulse => key0_pressed_pulse);
  p0 : entity work.pulse_generator(v1)
              generic map(clock_frequency => clock_frequency,pulse_frequency => 4.0)
              port map(clock => clock,reset => key0_pressed_pulse,pulse => key0_autorepeat_pulse);

  k1 : entity work.debouncer(v1)
              generic map(clock_frequency => clock_frequency,window_duration => 1.0e-4,initial_level => '1')
              port map(clock => clock,dirty => key(1),clean => key1,zero_to_one_pulse => open,one_to_zero_pulse => key1_pressed_pulse);
  p1 : entity work.pulse_generator(v1)
              generic map(clock_frequency => clock_frequency,pulse_frequency => 4.0)
              port map(clock => clock,reset => key1_pressed_pulse,pulse => key1_autorepeat_pulse);

  k2 : entity work.debouncer(v1)
              generic map(clock_frequency => clock_frequency,window_duration => 1.0e-4,initial_level => '1')
              port map(clock => clock,dirty => key(2),clean => reset_n,zero_to_one_pulse => open,one_to_zero_pulse => open);
  --
  -- The LCD controller
  --
  c : entity work.lcd_controller(v1)
             generic map(clock_frequency => clock_frequency)
             port map(clock => clock,reset => not reset_n,
                      lcd_on => lcd_on,lcd_blon => lcd_blon,lcd_rw => lcd_rw,lcd_en => lcd_en,lcd_rs => lcd_rs,lcd_data => lcd_data,
                      txd_rs_and_data => txd_rs_and_data,txd_request => txd_request,txd_accepted => txd_accepted);
  --
  -- The state machine
  --
  process(clock) is
  begin
    if rising_edge(clock) then
      --
      -- Deal with key presses
      --
      if key0_pressed_pulse = '1' or (key0 = '0' and key0_autorepeat_pulse = '1') then
        n <= n+1;
      end if;
      if key1_pressed_pulse = '1' or (key1 = '0' and key1_autorepeat_pulse = '1') then
        n <= n-1;
      end if;
      if reset_n = '0' then
        n <= "00000000";
        index <= 0;
      end if;
      --
      -- LCD refresh (to simplify things, we are always refreshing the contents of the second line of the LCD display)
      --
      txd_request <= '1'; -- we are always attempting to write
      if index = 32 then
        if n(7 downto 4) >= "1010" then
          txd_rs_and_data <= '1' & "0100" & std_logic_vector(n(7 downto 4) - "1001"); -- A to F (ASCII codes 65 to 70)
        else
          txd_rs_and_data <= '1' & "0011" & std_logic_vector(n(7 downto 4));          -- 0 to 9 (ASCII codes 48 to 57)
        end if;
      elsif index = 33 then
        if n(3 downto 0) >= "1010" then
          txd_rs_and_data <= '1' & "0100" & std_logic_vector(n(3 downto 0) - "1001"); -- A to F (ASCII codes 65 to 70)
        else
          txd_rs_and_data <= '1' & "0011" & std_logic_vector(n(3 downto 0));          -- 0 to 9 (ASCII codes 48 to 57)
        end if;
      elsif index = 38 then
        txd_rs_and_data <= '1' & std_logic_vector(n);
      else
        txd_rs_and_data <= lcd_program(index);
      end if;
      if txd_accepted = '1' then
        if index < 38 then
          index <= index+1;
        else
          index <= 26; -- to the second line again
        end if;
      end if;
    end if;
  end process;
  --
  -- Audio control
  --
  ac : entity work.audio_controller(v1)
              generic map(clock_frequency => clock_frequency)
              port map(clock => clock,reset => '0',
                       i2c_sclk => i2c_sclk,i2c_sdat => i2c_sdat,
                       use_line_in => '1',line_in_gain => "00000", -- although we don't use the ADC side of the audio codec,
                       use_mic => '0',mic_boost => '0',            --   we set here use_line_in to '1', because otherwise the
                       line_bypass => '0',mic_bypass => '0',       --   audio_pulse signal (see below) is not generated
                       volume => "1100000");
  --
  -- Audio loop
  --
  aio : entity work.audio_io(v1)
               generic map(clock_frequency => clock_frequency)
               port map(clock => clock,clock_50 => clock_50,aud_xck => aud_xck,
                        aud_bclk => aud_bclk,aud_adclrck => aud_adclrck,aud_adcdat => aud_adcdat,aud_dacdat => aud_dacdat,
                        from_left => open,from_right => open,valid => audio_pulse,
                        to_left => std_logic_vector(left(16 downto 1)),to_right => std_logic_vector(right(16 downto 1)));
  blop : entity work.blop_sound_rom(v1)
                port map(clock => clock,
                         addr0_0 => std_logic_vector(addr0),data0_1 => data0,
                         addr1_0 => std_logic_vector(addr1),data1_1 => data1);
  left  <= (data0(15) & signed(data0)) + (data1(15) & signed(data1)); -- sign extend and add
  right <= (data0(15) & signed(data0)) - (data1(15) & signed(data1)); -- sign extend and subtract
  process(clock) is
  begin
    if rising_edge(clock) then
      --
      -- Advance the audio sample numbers
      --
      if audio_pulse = '1' then
        if addr0 /= x"FFF" then
          addr0 <= addr0+1;
        end if;
        if addr1 /= x"FFF" then
          addr1 <= addr1+1;
        end if;
      end if;
      --
      -- Reset the audio sample numbers
      --
      if key0_pressed_pulse = '1' or (key0 = '0' and key0_autorepeat_pulse = '1') then
        addr0 <= x"000";
      end if;
      if key1_pressed_pulse = '1' or (key1 = '0' and key1_autorepeat_pulse = '1') then
        addr1 <= x"000";
      end if;
    end if;
  end process;
end v1;
