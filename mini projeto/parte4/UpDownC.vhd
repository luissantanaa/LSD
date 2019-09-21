library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UpDownC is
	port(input : in std_logic;
		  clk : in std_logic;
		  output : out std_logic_vector(3 downto 0));
end UpDownC;

architecture Behavioral of UpDownC is
signal s_cnt : unsigned(3 downto 0); 
begin
	process(clk,input)
		if(rising_edge(clk)) then
			if(input='1') then
				s_cnt<=s_cnt + 1;
			elsif(s_cnt > 99) then
				output
		end if;
	end process;
	output<= std_logic_vector(s_cnt);
end Behavioral;