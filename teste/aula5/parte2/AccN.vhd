library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AccN is
	generic(N : positive:=8);
	port(A : in std_logic_vector(N-1 downto 0);
		  reset : in std_logic;
		  clk : in std_logic;
		  en : in std_logic);
end AccN;

architecture Behavioral of AccN is
signal s_addOut,s_regOut : std_logic_vector(N-1 downto 0);
begin
	add : entity work.AdderN(Behavioral)
			generic map(N => 8)
			port map(op1 => A,
						op2 => s_regOut,
						outOp =>s_addOut);
						
	Reg : entity work.RegN(Behavioral)
			generic map(N => 8)
			port map(datain => s_addOut,
						dataout => s_regOut,
						en => en,
						reset => reset,
						clk => clk);
end Behavioral;