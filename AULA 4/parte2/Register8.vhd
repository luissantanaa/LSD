Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Register8 is
		port(datain : in std_logic_vector(7 downto 0);
			  wrEn : in std_logic;
			  clk : in std_logic;
			  dataout : out std_logic_vector(7 downto 0));
end Register8;

architecture Behavioral of Register8 is
begin	
	process(clk)
	begin
		if(rising_edge(clk)) then	
			if(wrEn='1') then
				dataout<=datain;
			end if;
		end if;
	end process;
end Behavioral;