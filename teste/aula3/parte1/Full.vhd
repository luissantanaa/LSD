library IEEE;
use IEEE.STD_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity FullAdder is
	port(a,b,cin : in std_logic;
		  s,cout : out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
signal s_a,s_b,s_s : unsigned(1 downto 0);
begin
	s_a <= '0' & unsigned(a);
	s_b <= '0' & unsigned(b);
	s_s <= s_a + s_b;
	cout <= s_s(1);
	s <= s(0);
end Behavioral;
	