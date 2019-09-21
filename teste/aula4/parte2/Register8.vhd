library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity Register8 is
	generic(N : positive:= 8);
	port(datain : in std_logic_vector(N-1 downto 0);
		  dataout : out std_logic_vector(N-1 downto 0);
		  wrEn : in std_logic;
		  clk : in std_logic);
end Register8;

architecture Behavioral of Register8 is
begin
	process(clk,wrEn)
	begin
		if(rising_edge(clk)) then	
			if(wrEn = '1') then
				dataout <= datain;
			end if;
		end if;
	end process;
end Behavioral;