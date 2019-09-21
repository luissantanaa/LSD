library ieee;
use ieee.numeric_std,all;
use ieee.std_logic_1164.all;

entity BCD is
	port(binIN : in std_logic_vector(3 downto 0);
		  DezOut : out std_logic_vector(3 downto 0);
		  UnOut : out std_logic_vector(3 downto 0));
end BCD;

architecture Behavioral of BCD is
signal s_dez, s_un : unsigned(3 downto 0);
begin
	s_dez <= unsigned(BinIN)/x"A";
	s_un <= unsigned(BinIn) rem x"A";
	
	DezOut <= std_logic_vector(s_dez);
	UnOut <= std_logic_vector(s_un);
end Behavioral;