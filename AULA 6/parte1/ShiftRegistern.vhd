library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftRegistern is
	generic(N: positive:= 4);
	port(sin	: in std_logic;
		  clk : in std_logic;
		  dataOut	: out std_logic_vector(N-1 downto 0));
end ShiftRegistern;

architecture Behavioral of ShiftRegistern is
signal shiftreg : std_logic_vector(N-1 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			shiftreg<=shiftreg(N-2 downto 0) & sin;
		end if;
	end process;
	dataOut<= shiftreg;
end Behavioral;