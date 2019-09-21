library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
port(input : in std_logic_vector(3 downto 0);
	  validOut : out std_logic;
	  output : out std_logic_vector(1 downto 0));
end PEnc4_2;

architecture Behavioral of Penc4_2 is
begin
	process(input)		
		begin
			if(input(3)='1') then
				output <= "11";
				validOut<='1';
			elsif(input(2)='1') then
				output <= "10";
				validOut<='1';
			elsif(input(1)='1') then
				output<="01";
				validOut<='1';
			elsif(input(0)='1') then
				output<="00";
				validOut<='1';
			
			else validOut<='0';
					output<="00";
			end if;	
	end process;
end Behavioral;
