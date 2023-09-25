

entity dflipflop is
port
(
D, resetn clk: in std_logic
);
end dflipflop;

architecture behavior of dflipflop is
begin
process(clk,resetn)
begin
if
if clk event and clk = '1' then
	Q <= D;
end if;
end process;
end behavior;