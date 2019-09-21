+library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUp99 is
	port(up : in std_logic;
		  up10 : in std_logic;
		  enable : in std_logic;
		  reset : in std_logic;
		  count : out std_logic_vector(6 downto 0);
		  clk : in std_logic);
end CounterUp99;

architecture Behavioral of CounterUp99 is
	signal s_count : unsigned(6 downto 0);
begin 
	process(clk,enable,up,up10)
	begin
		if(rising_edge(clk)) then
			if(reset='1') then
				s_count <= "0000000";
			if(enable='0') then
				s_count <= "0000000";
			elsif(up = '1') then
				s_count <= s_count + 1;
			elsif(up10 = '1') then
				s_count <= s_count + 10;
			end if;
			end if;
		end if;
	end process;
end Behavioral;