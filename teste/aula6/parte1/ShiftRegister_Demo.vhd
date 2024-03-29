library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity ShiftRegister_Demo is
	port(clock_50 : in std_logic;
			SW	: in std_logic_vector(0 downto 0);
			LEDR	:	out std_logic_vector(7 downto 0)
			);
end ShiftRegister_Demo;

architecture Behavioral of ShiftRegister_Demo is
signal s_divclk : std_logic;
begin
	divclk: entity work.ClkDividerN(Behavioral)
				generic map(divFactor => 10)
				port map( clkin => clock_50,
				clkout => s_divclk);
	
	Shift: entity work.ShiftRegister4(Behavioral)
				generic map(size => 8)
				port map(
				dataout=>LEDR(7 downto 0),
				sin => SW(0),
				clk => s_divclk);
end Behavioral;