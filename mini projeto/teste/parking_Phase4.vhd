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
	signal s_count : positive;
	signal s_dez,s_un : std_logic_vector(3 downto 0);
begin

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
		
		
	
end Shell;