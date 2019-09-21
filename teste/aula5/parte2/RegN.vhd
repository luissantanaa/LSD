library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RegN is
	generic(N : positive:= 8);
	port(datain : in std_logic_vector(N-1 downto 0);
		  dataout : out std_logic_vector(N-1 downto 0);
		  en : in std_logic;
		  reset : in std_logic;
		  clk : in std_logic);
end RegN;

architecture Behavioral of RegN is
begin
	process(clk,en)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				dataout<=(others => '0');
			else 
				if(en='1') then
					dataout<=datain;
				end if;
			end if;
		end if;
	end process;
end Behavioral;