library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegisterDemo is
	port( clock_50 : in std_logic;
			SW	: in std_logic_vector(0 downto 0);
			LEDR	:	out std_logic_vector(7 downto 0)
			);
end ShiftRegisterDemo;

architecture Shell of ShiftRegisterDemo is
	signal s_clk : std_logic;
begin

freq : entity work.ClkDividerN(Behavioral)
				generic map(divFactor => 10)
					port map(clkIn => clock_50,
								clkOut => s_clk);
shift : entity work.ShiftRegistern(Behavioral)
				generic map(N => 8)
					port map(sin =>SW(0),
								clk => s_clk,
								dataOut => LEDR(7 downto 0));
end Shell;