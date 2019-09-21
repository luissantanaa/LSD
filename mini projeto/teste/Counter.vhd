library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter is
	port(inEnter : in std_logic;
		  inLeave : in std_logic;
		  full	:	out std_logic;
		  count	: out positive);
end Counter;

architecture Behavioral of Counter is
signal s_count : positive:=99;
begin
start1	: process(inEnter,inLeave)
	begin
		if(inEnter='1') then
			if(s_count>0) then
				s_count<=s_count-1;
				full<='0';
			end if;
		elsif(inLeave='1') then
			if(s_count<99) then
				s_count<=s_count+1;
				full<='0';
			end if;
		end if;
	count<=s_count;
end process;

start2	: process(s_count)
	begin
		if(s_count='0') then
			full<='1';
		else 
			full<='0';
end process;
end Behavioral;