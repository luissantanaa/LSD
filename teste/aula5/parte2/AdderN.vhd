library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AdderN is
	generic(N : positive := 8);
	port(op1 : in std_logic_vector(N-1 downto 0);
		  op2 : in std_logic_vector(N-1 downto 0);
		  outOp : out std_logic_vector(N-1 downto 0));
end AdderN;
architecture Behavioral of AdderN is
signal s_out, s_op1, s_op2 : unsigned(N-1 downto 0);
begin
	s_op1 <= unsigned(op1);  
	s_op2 <= unsigned(op2);
	s_out <= s_op1 + s_op2;
	outOp <= std_logic_vector(s_out);
end Behavioral;