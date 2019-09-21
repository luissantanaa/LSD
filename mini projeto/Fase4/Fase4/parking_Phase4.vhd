library ieee;
use ieee.std_logic_1164.all;

entity parking_Phase4 is
	port( KEY 		: in  std_logic_vector(2 downto 0);
			LEDR		: out std_logic_vector(1 downto 0);
			LEDG		: out std_logic_vector(8 downto 8);
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			HEX2		: out std_logic_vector(6 downto 0);
			CLOCK_50	: in std_logic);
end parking_Phase4;


architecture Shell of parking_Phase4 is
	signal s_clk_2hz, s_pulseOut, s_pulseOut2, s_pulseOut3, s_full, s_in, s_out, s_reset : std_logic;
	signal s_ct, s_un, s_dez: std_logic_vector(3 downto 0);
begin

t1:			entity work.timer(Behavioral)
					generic map(TIME_S => 10)	-- Time in seconds (10 s)
					port map(clk		=> CLOCK_50, 
								reset 	=> '0',
								start		=> not KEY(0),
								sIn 		=> not KEY(1),
								pulseOut	=> s_pulseOut,
								pulseOut2 => s_pulseOut2,
								pulseOut3 => s_pulseOut3);

UpC:			entity work.UpDownC(Behavioral)
					port map(clk		=> CLOCK_50,
								sIn		=> s_in,
								sOut		=> s_out,
								reset    => s_reset,
								full     => s_full, 
								count	   => s_ct);
						
BCD1:			entity work.BCD(Behavioral)
					port map(binIn		=> s_ct,
								DezOut	=> s_dez,
								UnOut		=> s_un);
						
f1:			entity work.freqDivider(Behavioral)
					generic map(DIV_FACTOR => 25E6)	-- fout is 50E6 / 25E6 = 2Hz
					port map(clkIn		=> CLOCK_50,
								clkOut	=> s_clk_2hz);
						
display0:	entity work.Bin7SegDecoder(Behavioral)
					port map(binInput => s_un,
							   decOut_n => HEX0);

display1:	entity work.Bin7SegDecoder(Behavioral)
					port map(binInput => s_dez,
							   decOut_n => HEX1);

FsIn  :     entity work.FlipFlopD(Behav)
					port map(reset => s_reset,
								D     => '1',
								clk   => KEY(1),
								Q     => s_in);

FsOut  :     entity work.FlipFlopD(Behav)
					port map(reset => s_reset,
								D     => '1',
								clk   => KEY(2),
								Q     => s_out);

		LEDR(1) <= s_pulseOut3;
		LEDR(0) <= s_pulseOut2;
		LEDG(8) <= s_pulseOut and s_clk_2hz;
end Shell;
