library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TimerN is
	generic(N : positive:=6);
	port(start : in std_logic;
		  reset : in std_logic;
		  clk : in std_logic;
		  enable : in std_logic;
		  timerOut : out std_logic);
end TimerN;

architecture Behavioral of TimerN is
signal s_count : integer:= N; 
begin	
	process(clk,enable,start)
	begin
		if(rising_edge(clk)) then	
			if(enable='1') then
				if(start='1' or (s_count > 0 and s_count < N+1)) then
					s_count <= s_count + 1;
					timerOut <= '1';
				elsif(reset = '1') then	
					s_count <= 0;
					timerOut <= '0';
				else
					s_count <= s_count;
					timerOut <= '0';
				end if;
			end if;
		end if;
	end process;
end Behavioral;