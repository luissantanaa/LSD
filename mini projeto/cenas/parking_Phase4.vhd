library ieee;
use ieee.std_logic_1164.all;

entity parking_Phase4 is
	port( KEY 		: in std_logic_vector(2 downto 0);
			LEDR		: out std_logic_vector(1 downto 0);
			LEDG		: out std_logic_vector(8 downto 8);
			HEX0		:	out std_logic_vector(6 downto 0);
			HEX1		:	out std_logic_vector(6 downto 0);
			HEX2		:	out std_logic_vector(6 downto 0);
			HEX3		:	out std_logic_vector(6 downto 0);
			CLOCK_50	: in std_logic);
end parking_Phase4;


architecture Shell of parking_Phase4 is
	signal s_clk_2hz,s_full, s_pulseOut,s_pulsedOut, s_pulseOut2, s_pulseOut3 : std_logic;
	signal s_count : integer;
	signal s_dez,s_un : std_logic_vector(3 downto 0);
begin

t1:	entity work.timer(Behavioral)
			generic map(TIME_S => 10)	-- Time in seconds (10 s)
			port map(clk		=> CLOCK_50, 
						reset 	=> '0',
						start		=> s_pulsedOut,
						sIn 		=> not KEY(1),
						pulseOut	=> s_pulseOut,
						pulseOut2 => s_pulseOut2,
						pulseOut3 => s_pulseOut3);

de:	entity work.DebounceUnit(Behavioral)
				port map(refclk=>CLOCK_50,
							dirtyIn=>not KEY(0),
							pulsedOut=>s_pulsedOut);
						
f1:	entity work.freqDivider(Behavioral)
			generic map(DIV_FACTOR => 25E6)	-- fout is 50E6 / 25E6 = 2Hz
			port map(clkIn		=> CLOCK_50,
						clkOut	=> s_clk_2hz);
count:	entity work.counter(Behavioral)
			port map(inEnter => not KEY(0),
						inLeave => not kEY(1),
						full => s_full,
						count=> s_count);
		
BCD:	entity work.BCD(Behavioral)
			port map(binIn=>s_count,
						DezOut=>s_dez,
						unOut=>s_un);
bin0:	entity work.Bin7SegDecoder(Behavioral)
			port map(binInput=>"1010",
						input=>"0001110" ,
						decOut_n=>HEX3,
						sel=>s_full);
bin1:	entity work.Bin7SegDecoder(Behavioral)
			port map(binInput=>"1010",
						input=>"1000001" ,
						decOut_n=>HEX2,
						sel=>s_full);
bin2:	entity work.Bin7SegDecoder(Behavioral)
			port map(binInput=>s_dez,
						input=>"1000111" ,
						decOut_n=>HEX1,
						sel=>s_full);
bin3:	entity work.Bin7SegDecoder(Behavioral)
			port map(binInput=>s_un,
						input=>"1000111" ,
						decOut_n=>HEX0,
						sel=>s_full);			
		
		
		LEDR(1) <= s_pulseOut3;
		LEDR(0) <= s_pulseOut2;
		LEDG(8) <= s_pulseOut and s_clk_2hz;
end Shell;
