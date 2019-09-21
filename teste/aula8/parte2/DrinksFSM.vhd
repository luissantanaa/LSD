library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DrinksFSM is
	port(V : in std_logic;
		  C : in std_logic;
		  drink : out std_logic;
		  clk : in std_logic;
		  reset : in std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is
	type TState is (S0,S1,S2,S3);
	signal s_currentState,s_nextState : TState;
begin
	sync_proc: process(clk)
	begin
		if(reset = '1') then
			s_nextState <= S0;
		else
			s_nextState <= s_currentState;
		end if;
	end process;
	
	comb_proc: process (s_currentState,V,C)
	begin
		case (s_currentState) is
		when S0 =>
			drink <= '0';
			if(V = '1') then
				s_nextState <= S1;
			elsif(C = '1') then
				s_nextState <= S2;
			else
				s_nextState <= s_currentState;
			end if;
		
		when S1 =>
			drink <= '0';
			if(V = '1') then
				s_nextState <= S2;
			elsif(C = '1') then
				s_nextState <= S3;
			else
				s_nextState <= s_currentState;
			end if;
			
		when S2 =>
			drink <= '0';
			if(V = '1') then
				s_nextState <= S3;
			elsif(C = '1') then
				s_nextState <= S3;
			else
				s_nextState <= s_currentState;
			end if;
			
		when S3 =>
			drink <= '1';
			s_nextState <= S0;
		end case;
	end process;
end Behavioral;