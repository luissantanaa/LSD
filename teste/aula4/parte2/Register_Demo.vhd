library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity Register_Demo is
	generic(N : positive:= 8);
	port(SW : in std_logic_vector(N downto 0);
		  KEY : in std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(N-1 downto 0));
end Register_Demo;

architecture Behavioral of Register_Demo is
begin
	
	reg: entity work.Register8(Behavioral)
			generic map(N => 8)
			port map(datain <= SW(N-1 downto 0),
						dataout <= LEDR(N-1 downto 0),
						clk <= KEY(0),
						wrEn <= SW(N));
end Behavioral;