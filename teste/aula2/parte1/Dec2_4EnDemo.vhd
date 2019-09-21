Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4EnDemo is
	port(SW : in std_logic_vector(2 downto 0);
		  LEDR : out std_logic_vector(3 downto 0));
end Dec2_4EnDemo;

architecture Behavioral of Dec2_4EnDemo is
begin
	Dec24: entity work.Dec2_4En(Behavioral)
						port map(inputs=>SW(1 downto 0),
									enable=>SW(2),
									outputs => LEDR(3 downto 0));
end Behavioral;