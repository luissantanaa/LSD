library ieee;
use ieee.std_logic_1164.all;

entity parking_Phase3 is
	port( KEY 		: in std_logic_vector(1 downto 0);
			LEDR		: out std_logic_vector(1 downto 0);
			LEDG		: out std_logic_vector(8 downto 8);
			CLOCK_50	: in std_logic);
end parking_Phase3;


architecture Shell of parking_Phase3 is
	signal s_clk_2hz, s_pulseOut, s_pulseOut2, s_pulseOut3 : std_logic;
begin

t1:	entity work.timer(Behavioral)
			generic map(TIME_S => 10)	-- Time in seconds (10 s)
			port map(clk		=> CLOCK_50, 
						reset 	=> '0',
						start		=> not KEY(0),
						sIn 		=> not KEY(1),
						pulseOut	=> s_pulseOut,
						pulseOut2 => s_pulseOut2,
						pulseOut3 => s_pulseOut3);

f1:	entity work.freqDivider(Behavioral)
			generic map(DIV_FACTOR => 25E6)	-- fout is 50E6 / 25E6 = 2Hz
			port map(clkIn		=> CLOCK_50,
						clkOut	=> s_clk_2hz);
		LEDR(1) <= s_pulseOut3;
		LEDR(0) <= s_pulseOut2;
		LEDG(8) <= s_pulseOut and s_clk_2hz;
end Shell;
