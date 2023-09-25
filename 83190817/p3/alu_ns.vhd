--ALU_NS
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity alu_ns is
generic (WIDTH : positive := 16 );
port (
input1 : in std_logic_vector(WIDTH-1 downto 0);
input2 : in std_logic_vector(WIDTH-1 downto 0);
sel : in std_logic_vector(3 downto 0);
output : out std_logic_vector(WIDTH-1 downto 0);
overflow : out std_logic
);
end alu_ns;


architecture behave of alu_ns is

signal tempin1, tempin2: unsigned (WIDTH-1 downto 0);
signal tempsum: unsigned (WIDTH downto 0);
--signal tempany : unsigned(WIDTH downto 0);
signal tempmult : unsigned(((WIDTH*2)-1) downto 0);
signal tempswap: unsigned(WIDTH-1 downto 0);
signal tempswapupper: unsigned(((WIDTH/2)-1) downto 0);
signal tempswaplower: unsigned(((WIDTH/2)-1) downto 0);

begin

process (sel, input1, input2)

begin
--to make sure nothing is sequential
--I.E. getting rid of inferred latches
tempin1 <= unsigned(input1);
tempin2 <= unsigned(input2);
tempswap <= ((WIDTH-1) downto 0 => '0');
tempmult <= (((WIDTH*2)-1) downto 0 => '0');
tempswapupper <= (((WIDTH/2)-1) downto 0 => '0');
tempswaplower <= (((WIDTH/2)-1) downto 0 => '0');
tempsum <= ((WIDTH) downto 0 => '0');
--use case statements
case sel is

 when "0000" =>
 output <= not(input1);
 overflow <= '0';
 
 when "0001" =>
 output <= (input1 nor input2);
 overflow <= '0';
 
 when "0010" =>
 output <= (input1 xor input2);
 overflow <= '0';
 
 when "0011" =>
 output <= (input1 or input2);
 overflow <= '0';
 
 when "0100" =>
 output <= (input1 and input2);
 overflow <= '0';
 
 when "0101" =>
 tempsum <= ('0' & tempin1) + ('0' & tempin2);
 output <= std_logic_vector(tempsum(WIDTH-1 downto 0));
 overflow <= tempsum(width);
 
 when "0110" =>
 output<=std_logic_vector(unsigned(input1) - unsigned(input2));
 overflow <= '0';
 
 when "0111" =>
 tempmult <= (tempin1) * (tempin2);
 output<=std_logic_vector(tempmult(WIDTH-1 downto 0));
 overflow <= tempmult(WIDTH);
 
 when "1000" =>
 overflow <= tempin1(WIDTH-1);
 output <=  std_logic_vector(shift_left(tempin1,1));
 
 
 when "1001" =>
 overflow <= input1(0);
 output <=  std_logic_vector(shift_right(unsigned(input1),1));
 
 when "1010" =>
 output<= std_logic_vector(rotate_left(unsigned(input1),WIDTH));
 overflow <= '0';
 
 when "1011" =>
 tempswapupper <= unsigned(input1( (WIDTH-1) downto (WIDTH/2) ));
 tempswaplower <= unsigned(input1( ((WIDTH/2)-1) downto 0));
 --if odd length (4 3 2 1 0 = 5 bits)
 if width mod 2 = 0 then
 tempswap <= tempswaplower & tempswapupper;
 --if even length
 elsif width mod 2 /= 0 then
 tempswap <= tempswaplower & tempswapupper;
 end if;
 
 output<= std_logic_vector(tempswap);
 overflow <= '0';
  
 when OTHERS =>
 output<=( (WIDTH-1) downto 0 => '0' );
 overflow <= '0';

end case;

end process;

end behave;