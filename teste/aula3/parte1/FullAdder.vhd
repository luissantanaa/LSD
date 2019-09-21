library IEEE;
use IEEE.STD_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity FullAdder is
	port(a,b,cin : in std_logic;
		  s,cout : out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
signal s_a,s_b,s_cin,s_s : std_logic;
begin
	s <= a xor b xor cin;
	s_a <= a and b;
	s_b <= a and cin;
	s_s <= cin  and b;
	cout <= s_a or s_b or s_s;
end Behavioral;
	