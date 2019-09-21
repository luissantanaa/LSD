library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter is
	port(inEnter : in std_logic;
		  inLeave : in std_logic;
		  full	:	out std_logic;
		  count	: out integer);
end Counter;

architecture Behavioral of Counter is
signal s_count : integer:=0;
begin
	process(inEnter,inLeave)
	begin
		if(inEnter='1') then
			if(s_count>0) then
				s_count<=s_count-1;
				full<='0';
			else
				full<='1';
			end if;
		elsif(inLeave='1') then
			if(s_count<99) then
				s_count<=s_count+1;
				full<='0';
			else
				full<='1';
			end if;
		end if;
	count<=s_count;
	end process;
end Behavioral;