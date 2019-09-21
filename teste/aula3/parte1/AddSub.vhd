library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddSub is
	port(input0 : in std_logic_vector(3 downto 0);
		  input1 : in std_logic_vector(3 downto 0);
		  sel : in std_logic;
		  output : out std_logic_vector(3 downto 0));
end AddSub;

architecture Behavioral of AddSub is
begin
	process(sel)
	begin
		if(sel='0') then
			output<=input0;
		elsif(sel='1') then
			output<=input1;
		end if;
	end process;
end Behavioral;
	