--Steven Miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder8numeric is
 port(
 input1, input2 : in std_logic_vector(7 downto 0);
 carry_in : in std_logic;
 sum : out std_logic_vector(7 downto 0);
 carry_out : out std_logic
 );
end adder8numeric;

architecture str of adder8numeric is
signal carryin : unsigned(7 downto 0);
signal tempin1, tempin2:unsigned (7 downto 0);
signal tempsum: unsigned (8 downto 0);

begin

carryin <= "0000000" & carry_in;
tempin1 <= unsigned(input1);
tempin2 <= unsigned(input2);
tempsum <= ('0'&tempin1) + ('0'&tempin2) + ('0'&carryin);
sum <= std_logic_vector(tempsum(7 downto 0));
carry_out <= tempsum(8);

end str;
