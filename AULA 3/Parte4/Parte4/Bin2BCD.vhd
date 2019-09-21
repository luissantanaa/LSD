library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bin2BCD is
	port(binIn : in std_logic_vector(3 downto 0);
		  bcd0 : out std_logic_vector(3 downto 0);
		  bcd1 : out std_logic_vector(3 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is

signal s_binIn : unsigned(3 downto 0);
signal s_bcd0, s_bcd1 : unsigned(3 downto 0);
	
begin 

	s_binIn <= unsigned(binIn);
	s_bcd0 <= s_binIn REM x"A";
	s_bcd1 <= s_binIn / x"A";
	
	bcd0 <= std_logic_vector(s_bcd0);
	bcd1 <= std_logic_vector(s_bcd1);

end Behavioral;