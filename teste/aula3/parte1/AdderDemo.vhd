library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Adder4 is
	port(inputs0 : in std_logic_vector(3 downto 0);
		  inputs1 : in std_logic_vector(3 downto 0);
		  output : out std_logic_vector(3 downto 0);
		  cin : in std_logic;
		  cout : out std_logic);
end Adder4;

architecture Structural of Adder4 is
signal carryout : std_logic_vector(3 downto 0);
begin
	adder0: entity work.FullAdder(Behavioral)
							port map(a=>inputs0(0),
									  b=>inputs1(0),
									  cin => cin,
									  cout=>carryout(0));
									  
	adder1: entity work.FullAdder(Behavioral)
							port map(a=>inputs0(1),
									  b=>inputs1(1),
									  cin => cin,
									  cout=>carryout(1));
	
	adder2: entity work.FullAdder(Behavioral)
							port map(a=>inputs0(2),
									  b=>inputs1(2),
									  cin => cin,
									  cout=>carryout(2));
	
	adder3: entity work.FullAdder(Behavioral)
							port map(a=>inputs0(3),
									  b=>inputs1(3),
									  cin => cin,
									  cout=>carryout(3));
end Structural;