library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2Dec is
	port(input : in std_logic_vector(3 downto 0);
			outDez : out std_logic_vector(3 downto 0);
			outUn : out std_logic_vector(3 downto 0));
end Bin2Dec;

architecture Behavioral of Bin2Dec is
signal s_dez,s_un : unsigned(3 downto 0);
begin	
	s_dez <= unsigned(input) / x"A";
	s_un <= unsigned(input) rem x"A";
	outDez <= std_logic_vector(s_dez);
	outUn <= std_logic_vector(s_un);
end Behavioral;