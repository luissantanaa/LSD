----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
--
-- Audio controller example
--
-- This audio example is controlled by the 18 switches. Their function is as follows:
--   sw(17) .............                when '1', a 1 kHz sinusoidal signal is sent to the DAC (Digital to Analog Converter)
--   sw(16) ............. [use_line_in]  when '1', select the line-in input as the input to the ADC (Analog to Digital Converter)
--   sw(15 downto 11) ... [line_in_gain] line-in amplification gain ("00000" is -34.5dB, "11111" is +12.0dB, steps of 1.5dB)
--   sw(10) ............. [use_mic]      when '1', and when sw(16) is '0', select the mic input as the input to the ADC
--   sw(9) .............. [mic_boost]    mic amplification gain ('0' is 0dB, '1' is +20dB)
--   sw(8) .............. [line_bypass]  when '1', part of the line-in input appears on the line-out output (fixed gain of -6dB)
--   sw(7) .............. [mic_bypass]   when '1', part of the mic input appears on the line-out output (fixed gain of -6dB)
--   sw(6 downto 0) ..... [volume]       output volume ("0110000" is -73 dB, "1111111" is +6dB, steps of 1dB, "0101111" or below is mute)
--
-- Recommendation: initially place sw(16) at '1', place sw(15 downto 11) at "10000", and place sw(6 downto 0) at "1100000"
--
-- The red leds above the switches that control gains (line_in_gain, mic_boost, and volume) are always on.
-- The red leds above the input selectors (use_line_in and use_mic) blink at 5Hz
-- The other red leds are always off.
--
-- dB means decibels (for amplitudes, a gain of G corresponds to 20*log_10(G) decibels, so, for example, a gain of 10 corresponds to +20 dB)
--
-- The functional block diagram presented in figure 9 (page 21) of the WM8731 data sheet (Production Data, April 2009, Revision 4.8) provides a good
--   overview of what the audio codec (COder-DECoder) is able to do.
--
-- This example uses a 100 MHz clock (just to show how that can be done).
--

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;

entity audio_tl is
  port
  (
    clock_50 : in std_logic;

    sw   : in  std_logic_vector(17 downto 0);
    ledr : out std_logic_vector(17 downto 0);

    i2c_sclk : inout std_logic;
    i2c_sdat : inout std_logic;

    aud_xck     : out std_logic;
    aud_bclk    : in  std_logic;
    aud_adclrck : in  std_logic;
    aud_adcdat  : in  std_logic;
    aud_dacdat  : out std_logic
  );
end audio_tl;

architecture v1 of audio_tl is
  --
  -- Just for fun, we will use a 100 MHz clock
  --
  constant clock_frequency : real := 100.0e6;
  signal clock : std_logic;
  --
  -- Debounced switches
  --
  signal clean_sw : std_logic_vector(sw'range); -- same range as sw
  --
  -- The 1 kHz sinusoidal signal
  --
  signal sin_val : std_logic_vector(15 downto 0); -- the sinusoidal signal
  signal sin_arg : std_logic_vector(17 downto 0); -- the argument to the sin_function entity (2*pi corresponds to 2**18)
  constant sin_arg_increment : integer := integer(2.0**18*1.0e3/48.0e3); -- one period corresponds to 2**18, frequency of 1.0e3, sampling frequency of 48.0e3)
  --
  -- Audio data
  --
  signal from_left  : std_logic_vector(15 downto 0);
  signal from_right : std_logic_vector(15 downto 0);
  signal valid      : std_logic;
  signal to_left    : std_logic_vector(15 downto 0);
  signal to_right   : std_logic_vector(15 downto 0);
  --
  -- Red leds blink control
  --
  signal blink       : std_logic := '0';
  signal blink_pulse : std_logic;
begin
  --
  -- The clock
  --
  clk : entity work.clock_generator(cyclone4e)
               generic map(frequency => clock_frequency)
               port map(clock_50 => clock_50,new_clock => clock);

  --
  -- Debounced switches
  --
  s : for i in sw'range generate
        d : entity work.debouncer(v1)
                   generic map(clock_frequency => clock_frequency,window_duration => 1.0e-2,initial_level => '0')
                   port map(clock => clock,dirty => sw(i),clean => clean_sw(i),zero_to_one_pulse => open,one_to_zero_pulse => open);
      end generate;
  --
  -- Audio control
  --
  ac : entity work.audio_controller(v1)
              generic map(clock_frequency => clock_frequency)
              port map(clock => clock,reset => '0',
                       i2c_sclk => i2c_sclk,i2c_sdat => i2c_sdat,
                       use_line_in => clean_sw(16),line_in_gain => clean_sw(15 downto 11),
                       use_mic => clean_sw(10),mic_boost => clean_sw(9),
                       line_bypass => clean_sw(8),mic_bypass => clean_sw(7),
                       volume => clean_sw(6 downto 0));
  --
  -- Audio loop
  --
  aio : entity work.audio_io(v1)
               generic map(clock_frequency => clock_frequency)
               port map(clock => clock,clock_50 => clock_50,aud_xck => aud_xck,
                        aud_bclk => aud_bclk,aud_adclrck => aud_adclrck,aud_adcdat => aud_adcdat,aud_dacdat => aud_dacdat,
                        from_left => from_left,from_right => from_right,valid => valid,
                        to_left => to_left,to_right => to_right);
  wave : entity work.sin_function(v1)
                port map(clock => clock,arg_0 => sin_arg,sin_5 => sin_val);

  process(clock) is
  begin
    if rising_edge(clock) then
      if valid = '1' then
        sin_arg <= std_logic_vector(unsigned(sin_arg) + sin_arg_increment); -- it takes 5 clock cycles to compute sin_val, but we have many more than that
                                                                            --   before the next valid pulse arrives
        if clean_sw(17) = '1' then
          to_left  <= sin_val;    -- line-out is a
          to_right <= sin_val;    --   1 kHz sinusoidal
        else
          to_left <= from_left;   -- line-out is
          to_right <= from_right; --   line-in
        end if;
      end if;
    end if;
  end process;
  --
  -- Red leds
  --
  pg : entity work.pulse_generator(v1)
              generic map(clock_frequency => clock_frequency,pulse_frequency => 2.0*5.0) -- twice the blink frequency
              port map(clock => clock,reset => '0',pulse => blink_pulse);
  process(clock) is
  begin
    if rising_edge(clock) then
      if blink_pulse = '1' then
        blink <= not blink;
      end if;
    end if;
  end process;
  ledr(17) <= '0';
  ledr(16) <= blink; -- use line-in switch position
  ledr(15 downto 11) <= (others => '1');
  ledr(10) <= blink; -- use min switch position
  ledr(9 downto 7) <= (others => '0');
  ledr(6 downto 0) <= (others => '1');
end v1;
