library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftRegister4 is
	port(sin	: in std_logic;
		  clk : in std_logic;
		  dataOut	: out std_logic_vector(3 downto 0));
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is
signal shiftreg : std_logic_vector(3 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			shiftreg<=shiftreg(2 downto 0) & sin;
		end if;
	end process;
	dataOut<= shiftreg;
end Behavioral;