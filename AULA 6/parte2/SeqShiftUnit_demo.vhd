library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity SeqShiftUnit_demo is
	port(clock_50 : in std_logic;
		  KEY	:	in std_logic_vector(7 downto 0);
		  SW	:	in std_logic_vector(13  downto 0);
		  LEDR	:	in std_logic_vector(7 downto 0));
end SeqShiftUnit_demo;

architecture Behavioral of SeqShiftUnit_demo is
begin

SeqShiftUnit_demo : entity work.SeqShiftUnit_demo(Behavioral)
									port map(clk => clock_50
												dataIn =>SW(7 downto 0)
												);
									