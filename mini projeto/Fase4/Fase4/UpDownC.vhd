library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UpDownC is
	port(sIn    : in  std_logic;
		  sOut   : in  std_logic;
		  reset  : out std_logic;
		  clk    : in  std_logic;
		  full   : out std_logic;
		  count  : out std_logic_vector(3 downto 0));
end UpDownC;

architecture Behavioral of UpDownC is
signal s_cnt : unsigned(3 downto 0);

begin
	process(clk,sIn,sOut)
	begin
		if(rising_edge(clk)) then	
			reset <='1';
			if(sIn='1' and s_cnt > 0) then
				s_cnt <= s_cnt -1;
				reset <='1';
			end if;
			if(Sout='1' and s_cnt <99) then
				s_cnt <= s_cnt +1;
				reset <='1';
			end if;
			if(s_cnt = 0 and sOut='0') then
				full <= '1';
			end if;
		end if;
	end process;
	count<= std_logic_vector(s_cnt);
end Behavioral;