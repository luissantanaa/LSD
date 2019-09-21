library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(binInput : in std_logic_vector(3 downto 0);
		  input	: in std_logic_vector(6 downto 0);
		  decOut_n : out std_logic_vector(6 downto 0);
		  sel: in std_logic);
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	process(sel,binInput)
	begin
		if(sel='1') then
			decOut_n<=input;
		else
			if(binInput = "0000") then
				decOut_n<="1000000";
			elsif(binInput = "0001") then
				decOut_n<="1111001";
			elsif(binInput = "0010") then
				decOut_n<="0010011";
			elsif(binInput = "0011") then
				decOut_n<="0110000";
			elsif(binInput = "0100") then
				decOut_n<="0011001";
			elsif(binInput = "0101") then
				decOut_n<="0010010"; 
			elsif(binInput = "0110") then
				decOut_n<="0000010";
			elsif(binInput = "0111") then
				decOut_n<=	"1111000";
			elsif(binInput = "1000") then
				decOut_n<="0000000"; 
			elsif(binInput = "1001") then
				decOut_n<="0010000";
			elsif(binInput = "1010") then
				decOut_n<="1111111";
			else	
				decOut_n<="0000000";		
			end if;
		end if;
	end process;
end Behavioral;