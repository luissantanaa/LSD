library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FullAdder is
	port(a,b,cin : in std_logic;
			s, cout :out std_logic);
end FullAdder;

architecture Behavioral  of FullAdder is
signal S1,S2,S3 : std_logic;
begin
	s <= (a xor b) xor cin;
	S1 <= a and b;
	S2 <= a and cin;
	S3 <= cin and b;
	cout <= S1 or S2 or S3;
end Behavioral;