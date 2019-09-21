library IEEE;
use IEEE.std_logic_1164.all;


entity AND2Gate is
	port(inPort0 : in std_logic;
		  inPort1 : in std_logic;
		  outPort : out std_logic
	);
end AND2Gate;

architecture Behavioral of AND2Gate is
begin 
	outPort <= inPort0 and inPort1;
end Behavioral;	