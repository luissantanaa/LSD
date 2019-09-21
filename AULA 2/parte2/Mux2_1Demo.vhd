library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Mux2_1Demo is
	port(enable : in std_logic;
		input0: in std_logic;
		input1 : in std_logic;
		output : out std_logic;
		sel : in std_logic);
end Mux2_1Demo;

architecture BehavEquations of Mux2_1Demo is
begin
	process(sel)
		begin
			if (sel='0') then
				output <= input0;
			end if;
			if (sel='1') then
				output <= input1;
			end if;
	end process;
end BehavEquations;