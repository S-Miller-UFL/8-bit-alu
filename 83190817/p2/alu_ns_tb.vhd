library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity alu_ns_tb is
end alu_ns_tb;

architecture TB of alu_ns_tb is

    component alu_ns

        generic (
            WIDTH : positive := 16
            );
        port (
            input1   : in  std_logic_vector(WIDTH-1 downto 0);
            input2   : in  std_logic_vector(WIDTH-1 downto 0);
            sel      : in  std_logic_vector(3 downto 0);
            output   : out std_logic_vector(WIDTH-1 downto 0);
            overflow : out std_logic
            );

    end component;

    constant WIDTH  : positive                           := 16;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(3 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal overflow : std_logic;

begin  -- TB

    UUT : alu_ns
        generic map (WIDTH => WIDTH)
        port map (
            input1   => input1,
            input2   => input2,
            sel      => sel,
            output   => output,
            overflow => overflow);

    process
    begin
	 
	 
		  -- test not 1010101010101010
		  sel    <= "0000";
        input1 <= "1010101010101010";
        wait for 40 ns;
        assert(output = not("1010101010101010")) report "Error : not 1010101010101010 ="  & integer'image(to_integer(unsigned(output))) & " instead of 0101010101010101" severity warning;
        assert(overflow = '1') report "Error";
		  
		  -- test 0000000000000000 nor 1010101010101010
		  sel    <= "0001";
        input1 <= "0000000000000000";
        input2 <= "1010101010101010";
        wait for 40 ns;
        assert(output = ("0000000000000000" nor "1010101010101010")) report "Error : 0000000000000000 nor 1010101010101010 = " & std_logic_vector'image(output) & " instead of 0101010101010101" severity warning;
        assert(overflow = '1') report "Error";
		  
		  -- test 1111111111111111 xor 1010101010101010
		  sel    <= "0010";
        input1 <= "1111111111111111";
        input2 <= "1010101010101010";
        wait for 40 ns;
        assert(output = ("1111111111111111" xor "1010101010101010")) report "Error : 1111111111111111 xor 1010101010101010 = " & std_logic_vector'image(output) & " instead of 1010101010101010" severity warning;
        assert(overflow = '1') report "Error"

        wait;

    end process;



end TB;