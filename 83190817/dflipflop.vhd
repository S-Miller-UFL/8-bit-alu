
entity dflipflop is
port
(
D, clk: in std_logic
);
end dflipflop;

architecture behavior of dflipflop is
begin
process(clk)
begin
if clk event and clk = '1' then
	Q <= D;
end if;
end process;
end behavior;