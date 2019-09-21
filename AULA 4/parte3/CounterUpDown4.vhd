library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUpDown4 is
	port(upDown : in std_logic;
		  enable : in std_logic;
		  dataIn : in std_logic_vector(3 downto 0);
		  load : in std_logic;
		  reset : in std_logic;
		  count : out std_logic_vector(3 downto 0);
		  clk : in std_logic);
end CounterUpDown4;

architecture Behavioral of CounterUpDown4 is
	signal s_count : unsigned(3 downto 0);
begin 
	process(clk,enable,upDown)
	begin
		if(rising_edge(clk)) then
			if(reset='1') then
				s_count <= "0000";
			if(enable='0') then
				s_count <= "0000";
			elsif(upDown = '0') then
				s_count <= s_count + 1;
			elsif(upDown = '1') then
				s_count <= s_count - 1;
			end if;
			end if;
		end if;
	end process;
end Behavioral;