library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ROM_16x8 is
	port(address : in std_logic_vector(3 downto 0);
		  dataOut : out std_logic_vector(7 downto 0));
end ROM_16x8;

architecture Behavioral of ROM_16x8 is
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (15 downto 0) of TDataWord;
	constant c_memory: TROM := ("00000000",
    "00000001",
	 "00000010",
    "00000011",
    "00000100",
    "11110000",
    "11110000",
    "11110000",
    "11110000",
    "11110000",
    "11110000",
    "11110000",
    "11110000",
    "11110000",
    "11110000",
    "11110000");
begin
	dataOut <= c_memory(to_integer(unsigned(address)));
end Behavioral;