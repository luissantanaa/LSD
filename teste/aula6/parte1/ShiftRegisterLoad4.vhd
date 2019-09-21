library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ShiftRegisterLoad4 is
	generic(size : positive:=4);
	port(sin : in std_logic;
		  clk : in std_logic;
		  loadIn : in std_logic_vector(size-1 downto 0);
		  load : in std_logic;
		  dataout : out std_logic_vector(size-1 downto 0));
end ShiftRegisterLoad4;

architecture Behavioral of ShiftRegisterLoad4
 is
 signal shift : std_logic_vector(size-1 downto 0);
 begin
	process(clk)
	begin
		if(rising_edge(clk)) then
				if(load = '0') then
					shift <= shift(size-1 downto 1) & sin;
				else
					shift <= loadIn;
				end if;
		end if;
	end process;
	dataout <= shift;
end Behavioral;
