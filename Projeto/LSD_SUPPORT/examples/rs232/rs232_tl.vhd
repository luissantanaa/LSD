----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
--
-- RS232 controller example
--
-- When sw(0) is '0', work in loop-back mode: transmit what is received
-- When sw(0) is '1', work in counter mode: whenever key(0) is pressed, send a byte (first 0, then 1, then 2, and so on)
-- The last received byte is displayed in hexadecimal in the two rightmost 7-segment displays
--

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;

entity rs232_tl is
  port
  (
    clock_50 : in std_logic;

    key : in std_logic_vector(0 downto 0);
    sw  : in std_logic_vector(0 downto 0);

    ledr : out std_logic_vector(0 downto 0);
    hex0 : out std_logic_vector(6 downto 0);
    hex1 : out std_logic_vector(6 downto 0);

    uart_rxd : in  std_logic;
    uart_txd : out std_logic
  );
end rs232_tl;

architecture v1 of rs232_tl is
  constant clock_frequency : real := 50.0e6;
  signal clock : std_logic;
  --
  -- State
  --
  signal state             : std_logic;                          -- debounced sw(0), loop-back mode when '0', "counter" mode when '1'
  signal count             : unsigned(7 downto 0) := "00000000"; -- byte to send
  signal key_pressed_pulse : std_logic;                          -- key(0) pressed pulse, asserted only when key(0) goes from '1' to '0'
  --
  -- RS232 data
  --
  signal rxd_data     : std_logic_vector(7 downto 0);
  signal rxd_valid    : std_logic;
  signal txd_data     : std_logic_vector(7 downto 0);
  signal txd_request  : std_logic;
  signal txd_accepted : std_logic := '0';
begin
  clock <= clock_50; -- we prefer our main clock to be named "clock" (perhaps just "clk" would be even better, but "clock" is more explicit)
  --
  -- Debounce keys and switches
  --
  dk : entity work.debouncer(v1)
              generic map(clock_frequency => clock_frequency,window_duration => 1.0e-4,initial_level => '1')
              port map(clock => clock,dirty => key(0),clean => open,zero_to_one_pulse => open,one_to_zero_pulse => key_pressed_pulse);
  ds : entity work.debouncer(v1)
              generic map(clock_frequency => clock_frequency,window_duration => 1.0e-2,initial_level => '0')
              port map(clock => clock,dirty => sw(0),clean => state,zero_to_one_pulse => open,one_to_zero_pulse => open);
  --
  -- The RS232 controller
  --
  c : entity work.rs232_controller(v1)
             generic map(clock_frequency => clock_frequency,baud_rate => 115200.0,data_bits => 8)
             port map(clock => clock,uart_rxd => uart_rxd,uart_txd => uart_txd,
                      rxd_data => rxd_data,rxd_valid => rxd_valid,
                      txd_data => txd_data,txd_request => txd_request,txd_accepted => txd_accepted);
  --
  -- The state machine
  --
  ledr(0) <= state;
  process(clock) is
  begin
    if rising_edge(clock) then
      --
      -- Deal with accepted transmission requests
      --
      if txd_accepted = '1' then
        txd_request <= '0';
      end if;
      --
      -- State actions
      --
      if state = '0' then
        --
        -- Loop-back mode (if our transmitter is slower that the remote transmitter then some bytes may be lost)
        --
        if rxd_valid = '1' then
          txd_request <= '1';
          txd_data <= rxd_data; -- will overwrite old value if txd_request was already '1'
        end if;
      else
        --
        -- Counter mode (if the key presses are fast enough, some count values will not be sent)
        --
        if key_pressed_pulse = '1' then
          txd_request <= '1';
          txd_data <= std_logic_vector(count); -- will overwrite old value if txd_request was already '1'
          count <= count+1;
        end if;
      end if;
    end if;
  end process;
  --
  -- Display (in hexadecimal) the last character received (note that rxd_data keeps the last received value)
  --
  d1 : entity work.seven_segment_decoder(v1) port map(code => '0' & rxd_data(7 downto  4),enable => '1',leds => hex1);
  d0 : entity work.seven_segment_decoder(v1) port map(code => '0' & rxd_data(3 downto  0),enable => '1',leds => hex0);
end v1;
