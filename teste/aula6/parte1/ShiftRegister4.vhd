library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ShiftRegister4 is
	generic(size : positive:=4);
	port(sin : in std_logic;
		  clk : in std_logic;
		  dataout : out std_logic_vector(size-1 downto 0));
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is
 signal shift : std_logic_vector(size-1 downto 0);
 begin
	process(clk)
	begin
		if(rising_edge(clk)) then
				shift <= shift(size-1 downto 1) & sin;
		end if;
	end process;
	dataout <= shift;
end Behavioral;
