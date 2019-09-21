library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port(D     : in  std_logic;
		  clk   : in  std_logic;
		  reset : in std_logic;
		  Q     : out std_logic);
end FlipFlopD;

architecture Behav of FlipFlopD is
begin
	process(clk)
	begin
		if(reset = '1') then
			Q <= '0';
		elsif(rising_edge(clk)) then
			Q <= D;
		end if;	
	end process;
end Behav;