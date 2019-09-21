library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddSub4 is
	port(a,b : in std_logic_vector(3 downto 0); 
		  sub,carryIn : in std_logic;
		  result : out std_logic_vector(3 downto 0);
		  carryOut : out std_logic);
end AddSub4;

architecture Structural of AddSub4 is
signal mux_out : std_logic_vector(3 downto 0);
begin
	addsub: entity work.Addsub(Behavioral)
					port map(input0 => b,
								input1 => not b,
								sel => sub,
								output => mux_out);
	adderD: entity work.AdderDemo(Structural)
					port map(inputs0 => a,
								inputs1 => mux_out,
								cin => carryIn,
								output=>result,
								cout => carryOut);
end Structural;