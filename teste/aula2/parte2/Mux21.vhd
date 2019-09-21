Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux21 is
	port(sel	: in std_logic;
		  input : in std_logic_vector(1 downto 0);
		  output : out std_logic);
end Mux21;

architecture Behavioral of Mux21 is
begin
	process(sel)
		if(sel='0') then
			output<=input(0);
		elsif(sel='1') then
			output <= input(1);
		end if;
	end process;
end Behavioral;