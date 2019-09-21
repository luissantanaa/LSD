library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity MuxComp is
	port(enable : in std_logic;
		input0: in std_logic_vector(3 downto 0);
		output : out std_logic_vector(3 downto 0);
		sub : in std_logic);
end MuxComp;

architecture BehavEquations of MuxComp is
begin
	process(sub)
		begin
			if (sub='0') then
				output <= input0;
			end if;
			if (sub='1') then
				output <= not input0;
			end if;
	end process;
end BehavEquations;