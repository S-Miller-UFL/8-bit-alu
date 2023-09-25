
entity upcountmanyQs is
port
(
clock, resetn, E : in std_logic;
Qa, Qb, QcBefore, QcAfter.Qd,Qe,Qf : out std_logic_vector(3 downto 0)
);
end upcountmanyQ's;

architecture behavior of upcountmanyQ's is
	signal count : std_logic_vector(3 downto 0);

begin 
Qa <= count;
process(clock, resetn)
begin
Qb <= count;
if resetn = '0' then
	count <="0000";
elsif(clock'EVENT AND clock = '1') then
		if E = '1' THEN
			QcBefore <= count;
			count <= count + 1;
			QcAfter <= count;
		else
			count <= count;
		end if;
		Qd <= count;
	end if;
Qe <=count;
end process;
Qf <= count;
end behavior;