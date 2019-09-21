----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
--
-- waveform recorder (circular buffer)
--

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
use     ieee.math_real.all;

entity waveform_recorder is
  generic
  (
    buffer_size : integer range 512 to 8192 := 1024; -- number of data points to record (must not be larger than array_size)
    word_size   : integer range 1 to 32 := 1         -- number of bits to record per sample
  );
  port
  (
    clock          : in  std_logic; -- clock
    reset          : in  std_logic; -- if active, reset the waveform recorder (the memory contents are not immediately reset)

    write_enable_0 : in  std_logic;                              -- write enable signal (active during only one clock cycle)
    write_data_0   : in  std_logic_vector(word_size-1 downto 0); -- data to write
    write_end_1    : out std_logic;                              -- set to '1' when the buffer is full

    read_addr_0    : in  integer range 0 to buffer_size-1;       -- read address (number of bits determined by the range of the integer)
    read_data_1    : out std_logic_vector(word_size-1 downto 0)  -- data read
  );
end waveform_recorder;

architecture v1 of waveform_recorder is
  --
  -- ROM and RAM memories must have an address range that is a power of 2
  --
  constant array_size : integer := 2**integer(ceil(log2(real(buffer_size))-1.0e-5)); -- dimension of the array used to store samples
  --
  -- dual port ram memory data
  --
  subtype ram_word_type is std_logic_vector(word_size-1 downto 0); -- memory word type
  type ram_type is array(0 to array_size-1) of ram_word_type;      -- memory array type
  signal ram : ram_type;                                           -- memory array
  --
  -- dual port memory write address
  --
  signal write_addr    : integer range 0 to array_size-1 := 0; -- write address
  signal end_of_buffer : std_logic := '0';                     -- end of buffer condition
  --
  -- reset data
  --
  signal doing_reset : std_logic := '0';                     -- active when reseting memory
  signal reset_addr  : integer range 0 to array_size-1 := 0; -- reset address
begin
  --
  -- make sure the generic parameters make sense
  --
  assert (buffer_size <= array_size) and (2*buffer_size > array_size) report "Bad array size" severity failure;
  assert false report "Circular buffer size = " & integer'image(array_size) severity note;
  --
  -- dual port ram
  --
  write_end_1 <= end_of_buffer;
  process(clock) is
  begin
    if rising_edge(clock) then
      --
      -- write port
      --
      if reset = '1' then
        write_addr <= 0;
        end_of_buffer <= '0';
        doing_reset <= '1';
        reset_addr <= 0;
      elsif write_enable_0 = '1' then
        ram(write_addr) <= write_data_0;
        if write_addr = buffer_size-1 then
          write_addr <= 0; -- warp around (circular buffer)
          end_of_buffer <= '1';
        else
          write_addr <= write_addr+1;
          end_of_buffer <= '0';
        end if;
        if doing_reset = '1' and reset_addr = write_addr then
          if write_addr = buffer_size-1 then
            doing_reset <= '0';
          else
            reset_addr <= reset_addr+1;
          end if;
        end if;
      elsif doing_reset = '1' then
        ram(reset_addr) <= (others => '0');
        if reset_addr = buffer_size-1 then
          doing_reset <= '0';
        else
          reset_addr <= reset_addr+1;
        end if;
      end if;
      --
      -- read port
      --
      read_data_1 <= ram(read_addr_0); -- read old value
    end if;
  end process;
end v1;
