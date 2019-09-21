----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
--
-- PS/2 device and VGA text frame buffer example
--
-- Part 1. If a PS/2 keyboard is detected, then
--         * turn ledg(0) on,
--         * the switches sw(2 downto 0) control the three keyboard leds
--         * the last two bytes received from the keyboard are shown in hexadecimal in the four right-hand side seven segment displays
--         If a PS/2 mouse is detected, then
--         * turn ledg(1) on,
--         * the leds ledg(7 downto 5) present the current status of the mouse keys
--         * the four segment displays on the left-hand side present cumulative x and y coordinates of the mouse movement
--         In both cases, ledg(8) is turned on during one tenth of a second whenever new information is received from the PS/2 device.
--         The PS/2 controller is reset when sw(4) is on
--
-- Part 2. Part of a 128x128 text buffer, filled initially with random characters, is displayed on the VGA screen using a 16x16 font
--         * all bytes received from the keyboard are written in the top left part of the text buffer
--         * when sw(3) is on, the part of text buffer that is visible scrolls in a predetermined way
--
-- TO DO: increase Fmax
--

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
use     work.vga_config.all;

entity ps2_vga_text_buffer_tl is
  port
  (
    clock_50 : in std_logic;

    sw  : in std_logic_vector(4 downto 0);

    ledr : out std_logic_vector(4 downto 0);
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

    ps2_clk : inout std_logic;
    ps2_dat : inout std_logic
  );
end ps2_vga_text_buffer_tl;

architecture v1 of ps2_vga_text_buffer_tl is
  constant clock_frequency : real := vga_frequency;
  signal clock : std_logic;
  --
  -- Debounced switches and reset signal
  --
  signal clean_sw : std_logic_vector(4 downto 0); -- debounced sw
  signal reset    : std_logic;
  --
  -- Part 1
  --
  signal keyboard_detected  : std_logic;
  signal key_code           : std_logic_vector(7 downto 0);  -- most recent key code
  signal new_key_code       : std_logic;                     -- new key code pulse
  signal last_two_key_codes : std_logic_vector(15 downto 0); -- last two bytes reveived from the PS/2 device
  signal mouse_detected     : std_logic;
  signal delta_x            : std_logic_vector(8 downto 0);  -- most recent mouse delta x movement
  signal delta_y            : std_logic_vector(8 downto 0);  -- most recent mouse delta y movement
  signal mouse_buttons      : std_logic_vector(2 downto 0);  -- most recent mouse buttons state
  signal mouse_movement     : std_logic;                     -- mouse movement pulse
  signal mouse_x            : std_logic_vector(7 downto 0) := x"80"; -- cumulative mouse x position
  signal mouse_y            : std_logic_vector(7 downto 0) := x"80"; -- cumulative mouse y position
  signal alarm              : std_logic := '0';              -- ledg(8) status
  signal alarm_pulse        : std_logic;                     -- 10 Hz alarm off pulse (duration of 0.1 seconds gives a frequency of 10 Hz)
  signal tmp_x              : integer range -511 to 511;     -- x+delta_x (integer data type, combinational logic)
  signal tmp_y              : integer range -511 to 511;     -- y+delta_y (integer data type, combinational logic)
  --
  -- Part 2 (text buffer)
  --
  constant n_rows     : integer range 1 to 128 := vga_height/16; -- number of rows and columns of the (visible)
  constant n_columns  : integer range 1 to 128 := vga_width/16;  --   top left zone of the text buffer
  constant border     : integer range 1 to   5 := 3;             -- number of rows/columns surrounding the top left display area
  signal init_buffer  : std_logic := '1';              -- asserted during the initialization of the text buffer memory
  signal write_row    : integer range 0 to 127 := 0;   -- row number for text buffer writes
  signal write_column : integer range 0 to 127 := 0;   -- column number for text buffer writes
  signal write_data   : std_logic_vector(6 downto 0);  -- write data (asynchronous)
  signal rand_char    : std_logic_vector(6 downto 0);  -- random character
  signal pending_data : std_logic_vector(15 downto 0) := (others => '0');         -- pending write data (bit 15 indicates if there is pending data to write)
  signal space_delay  : integer range 0 to 1+integer(0.05*vga_refresh_rate) := 0; -- about 50ms delay before writing a space separator
  --
  -- Part 2 (VGA)
  --
  signal moving         : std_logic;                                   -- if asserted, x_offset and y_offset change in every video frama
  signal x_offset       : integer range 0 to 128*16-1-vga_width  := 0; -- position, relative to the
  signal x_dir          : std_logic := '0';                            --   text buffer, and movement
  signal y_offset       : integer range 0 to 128*16-1-vga_height := 0; --   direction of the top left
  signal y_dir          : std_logic := '0';                            --   pixel of the display area
  signal text_x_1       : integer range 0 to 128*16-1;  -- text buffer coordinates of the
  signal text_y_1       : integer range 0 to 128*16-1;  --   pixel that is going to be displayed
  signal text_row_1x    : integer range 0 to 127;       -- row number
  signal text_column_1x : integer range 0 to 127;       -- column number
  signal font_char_2    : std_logic_vector(6 downto 0); -- character number that is
  signal font_char_3    : std_logic_vector(6 downto 0); --   going to be displayed
  signal font_row_2     : integer range 0 to 15;        -- row and column
  signal font_row_3     : integer range 0 to 15;        --   numbers of the
  signal font_column_2  : integer range 0 to 15;        --   character that is
  signal font_column_3  : integer range 0 to 15;        --   going to be displayed
  signal cursor_2       : std_logic;                    -- if asserted, the
  signal cursor_3       : std_logic;                    --   character being
  signal cursor_4       : std_logic;                    --   displayed is at
  signal color_4        : std_logic;                    --   the cursor position
  signal vga_data_0     : vga_data_t;
  signal vga_data_1     : vga_data_t;
  signal vga_data_2     : vga_data_t;
  signal vga_data_3     : vga_data_t;
  signal vga_data_4     : vga_data_t;
  signal vga_data_5     : vga_data_t;
  signal vga_rgb_5      : vga_rgb_t;
begin
  clk : entity work.vga_clock_generator(v1)
               port map(clock_50 => clock_50,vga_clock => clock);
  --
  -- Debounced switches and reset signal
  --
  s : for i in sw'range generate
        d : entity work.debouncer(v1)
                   generic map(clock_frequency => clock_frequency,window_duration => 1.0e-2,initial_level => '0')
                   port map(clock => clock,dirty => sw(i),clean => clean_sw(i),zero_to_one_pulse => open,one_to_zero_pulse => open);
      end generate;
  reset <= clean_sw(4);
  ledr <= clean_sw;
  --
  -- Part 1
  --
  ps2 : entity work.ps2_controller(v1)
               generic map(clock_frequency => clock_frequency)
               port map(clock => clock,reset => reset,
                        ps2_clk => ps2_clk,ps2_dat => ps2_dat,
                        keyboard_detected => keyboard_detected,keyboard_leds => clean_sw(1) & clean_sw(2) & clean_sw(0), -- num, caps, scroll lock
                        key_code => key_code,valid_key_code => new_key_code,
                        mouse_detected => mouse_detected,
                        mouse_delta_x => delta_x,mouse_delta_y => delta_y,mouse_buttons => mouse_buttons,valid_mouse_data => mouse_movement);
  pa : entity work.pulse_generator(v1)
              generic map(clock_frequency => clock_frequency,pulse_frequency => 10.0)
              port map(clock => clock,reset => new_key_code or mouse_movement,pulse => alarm_pulse);
  tmp_x <= to_integer(unsigned(mouse_x))+to_integer(signed(delta_x));
  tmp_y <= to_integer(unsigned(mouse_y))+to_integer(signed(delta_y));
  process(clock) is
  begin
    if rising_edge(clock) then
      if reset = '1' then
        alarm <= '0';
        last_two_key_codes <= (others => '0');
        mouse_x <= x"80";
        mouse_y <= x"80";
      end if;
      if new_key_code = '1' or mouse_movement = '1' then
        alarm <= '1'; -- turn led on
      elsif alarm_pulse = '1' then
        alarm <= '0'; -- turn led off
      end if;
      if new_key_code = '1' then
        last_two_key_codes <= last_two_key_codes(7 downto 0) & key_code;
      end if;
      if mouse_movement = '1' then
        if tmp_x < 0 then
          mouse_x <= x"00";
        elsif tmp_x > 255 then
          mouse_x <= x"FF";
        else
          mouse_x <= std_logic_vector(to_unsigned(tmp_x,8));
        end if;
        if tmp_y < 0 then
          mouse_y <= x"00";
        elsif tmp_y > 255 then
          mouse_y <= x"FF";
        else
          mouse_y <= std_logic_vector(to_unsigned(tmp_y,8));
        end if;
      end if;
    end if;
  end process;
  ledg(8) <= alarm;
  ledg(7 downto 5) <= mouse_buttons;
  ledg(4 downto 2) <= (others => '0');
  ledg(1) <= mouse_detected;
  ledg(0) <= keyboard_detected;

  d0 : entity work.seven_segment_decoder(v1) port map(code => '0' & last_two_key_codes(0*4+3 downto 0*4+0),enable => keyboard_detected,leds => hex0);
  d1 : entity work.seven_segment_decoder(v1) port map(code => '0' & last_two_key_codes(1*4+3 downto 1*4+0),enable => keyboard_detected,leds => hex1);
  d2 : entity work.seven_segment_decoder(v1) port map(code => '0' & last_two_key_codes(2*4+3 downto 2*4+0),enable => keyboard_detected,leds => hex2);
  d3 : entity work.seven_segment_decoder(v1) port map(code => '0' & last_two_key_codes(3*4+3 downto 3*4+0),enable => keyboard_detected,leds => hex3);
  d4 : entity work.seven_segment_decoder(v1) port map(code => '0' & mouse_y(0*4+3 downto 0*4+0),enable => mouse_detected,leds => hex4);
  d5 : entity work.seven_segment_decoder(v1) port map(code => '0' & mouse_y(1*4+3 downto 1*4+0),enable => mouse_detected,leds => hex5);
  d6 : entity work.seven_segment_decoder(v1) port map(code => '0' & mouse_x(0*4+3 downto 0*4+0),enable => mouse_detected,leds => hex6);
  d7 : entity work.seven_segment_decoder(v1) port map(code => '0' & mouse_x(1*4+3 downto 1*4+0),enable => mouse_detected,leds => hex7);
  --
  -- Part 2 (the write side of the text buffer)
  --
  tb : entity work.text_buffer(v1)
       port map(clock => clock,
                write_row => std_logic_vector(to_unsigned(write_row,7)),
                write_column => std_logic_vector(to_unsigned(write_column,7)),
                write_data => write_data,
                write_enable => '1', -- we are always writing
                read_row_0 => std_logic_vector(to_unsigned(text_row_1x,7)),
                read_column_0 => std_logic_vector(to_unsigned(text_column_1x,7)),
                read_data_1 => font_char_2);
  r7 : entity work.pseudo_random_generator(v1)
              generic map(n_bits => 7,seed => x"FE_01_DC_23_BA_45")
              port map(clock => clock,enable => '1',rnd => rand_char);
  -- combinational part of the write side of the text buffer
  process(init_buffer,write_row,write_column,rand_char,pending_data) is
  begin
    if init_buffer = '1' then
      if write_row >= border and write_row < n_rows-border and write_column >= border and write_column < n_columns-border then
        write_data <= "0100000"; -- space
      else
        write_data <= rand_char;
      end if;
    elsif pending_data(15) = '1' then
      write_data <= pending_data(14 downto 8);
    else
      write_data <= "0001111"; -- write a special character (thin X inside a box) at the cursor position
    end if;
  end process;
  -- sequential part of the write side of the text buffer
  process(clock) is
  begin
    if rising_edge(clock) then
      if vga_data_0.end_of_frame = '1' and space_delay /= 0 then
        space_delay <= space_delay-1;
      end if;
      -- update the pending write data buffer
      if new_key_code = '1' then
        -- most significant hexadecimal digit of the key code
        pending_data(15) <= '1';
        if unsigned(key_code(7 downto 4)) < 10 then
          pending_data(14 downto 12) <= "011";
          pending_data(11 downto 8) <= key_code(7 downto 4);
        else
          pending_data(14 downto 12) <= "100";
          pending_data(11 downto 8) <= std_logic_vector(unsigned(key_code(7 downto 4))-9);
        end if;
        -- least significant hexadecimal digit of the key code
        pending_data(7) <= '1';
        if unsigned(key_code(3 downto 0)) < 10 then
          pending_data(6 downto 4) <= "011";
          pending_data(3 downto 0) <= key_code(3 downto 0);
        else
          pending_data(6 downto 4) <= "100";
          pending_data(3 downto 0) <= std_logic_vector(unsigned(key_code(3 downto 0))-9);
        end if;
        space_delay <= space_delay'high;
      elsif pending_data(15) = '1' then
        pending_data <= pending_data(7 downto 0) & "00000000"; -- get rid of one character
      elsif space_delay = 1 then
        pending_data(15 downto 8) <= '1' & "0100000"; -- space separator
        space_delay <= 0;
      end if;
      -- update write coordinates
      if init_buffer = '1' then
        if write_column /= 127 then
          write_column <= write_column+1;
        else
          write_column <= 0;
          if write_row /= 127 then
            write_row <= write_row+1;
          else
            write_row <= border+1;
            write_column <= border+1;
            init_buffer <= '0';
          end if;
        end if;
      elsif pending_data(15) = '1' then
        if write_column < n_columns-border-1 then
          write_column <= write_column+1;
        else
          write_column <= border+1;
          if write_row < n_rows-border-1 then
            write_row <= write_row+1;
          else
            write_row <= border+1;
          end if;
        end if;
      end if;
      -- a reset signal overrides everything
      if reset = '1' then
        write_row <= 0;
        write_column <= 0;
        init_buffer <= '1';
        pending_data <= (others => '0');
      end if;
    end if;
  end process;
  --
  -- Part 2 (the VGA stuff, part of the action happens in the instantiated entities)
  --
  vc : entity work.vga_controller(v1)
              port map(clock => clock,reset => reset,vga_data_0 => vga_data_0);
  vo : entity work.vga_output(v1)
              port map(clock => clock,
                       vga_data => vga_data_5,vga_rgb => vga_rgb_5,
                       vga_clk => vga_clk,
                       vga_hs => vga_hs,vga_vs => vga_vs,vga_sync_n => vga_sync_n,vga_blank_n => vga_blank_n,
                       vga_r => vga_r,vga_g => vga_g,vga_b => vga_b);
  f  : entity work.font_16x16_bold(v1)
              port map(clock => clock,
                       char_0 => font_char_3,row_0 => std_logic_vector(to_unsigned(font_row_3,4)),column_0 => std_logic_vector(to_unsigned(font_column_3,4)),
                       data_1 => color_4);
  text_row_1x <= text_y_1/16;
  text_column_1x <= text_x_1/16;
  process(clock) is
  begin
    if rising_edge(clock) then
      --
      -- scroll movement
      --
      if vga_data_0.end_of_frame = '1' then
        moving <= clean_sw(3);
        if clean_sw(3) = '1' then
          if x_dir = '0' then
            if x_offset <= x_offset'high-3 then
              x_offset <= x_offset+3;
            else
              x_offset <= x_offset'high;
              x_dir <= '1';
            end if;
          else
            if x_offset >= x_offset'low+3 then
              x_offset <= x_offset-3;
            else
              x_offset <= x_offset'low;
              x_dir <= '0';
            end if;
          end if;
          if y_dir = '0' then
            if y_offset <= y_offset'high-1 then
              y_offset <= y_offset+1;
            else
              y_offset <= y_offset'high;
              y_dir <= '1';
            end if;
          else
            if y_offset >= y_offset'low+1 then
              y_offset <= y_offset-1;
            else
              y_offset <= y_offset'low;
              y_dir <= '0';
            end if;
          end if;
        end if;
      end if;
      if reset = '1' then
        x_offset <= 0;
        y_offset <= 0;
        x_dir <= '0';
        y_dir <= '0';
      end if;
      --
      -- Stage 0 -> 1 (adjust coordinates)
      --
      vga_data_1 <= vga_data_0;
      if moving = '0' then
        text_x_1 <= vga_data_0.x;
        text_y_1 <= vga_data_0.y;
      else
        text_x_1 <= x_offset + vga_data_0.x;
        text_y_1 <= y_offset + vga_data_0.y;
      end if;
      --
      -- Stage 1 -> 2 (access text buffer memory, and compute font x and y coordinates)
      --
      vga_data_2 <= vga_data_1;
      font_row_2 <= text_y_1 mod 16;
      font_column_2 <= text_x_1 mod 16;
      if text_row_1x = write_row and text_column_1x = write_column then
        cursor_2 <= '1';
      else
        cursor_2 <= '0';
      end if;
      --
      -- Stage 2 -> 3 (delay of one clock cycle to improve Fmax)
      --
      vga_data_3 <= vga_data_2;
      cursor_3 <= cursor_2;
      font_char_3 <= font_char_2;
      font_row_3 <= font_row_2;
      font_column_3 <= font_column_2;
      --
      -- Stage 3 -> 4 (access font memory)
      --
      vga_data_4 <= vga_data_3;
      cursor_4 <= cursor_3;
      --
      -- State 4 -> 5 (choose color)
      --
      vga_data_5 <= vga_data_4;
      if color_4 = '0' then
        vga_rgb_5.r <= "00100000";
        vga_rgb_5.g <= '0' & cursor_4 & "100000";
        vga_rgb_5.b <= "00100000";
      else
        vga_rgb_5.r <= "11111111";
        vga_rgb_5.g <= "11111111";
        vga_rgb_5.b <= "11111111";
      end if;
    end if;
  end process;
end v1;
