library	ieee;
use ieee.std_logic_1164.all;

entity MULTIPLEXADOR_1BIT is
	port (
	
		a, b, c, d : in std_ulogic;
		selector    : in std_ulogic_vector(1 downto 0);
		x          : out std_ulogic
	);
end MULTIPLEXADOR_1BIT;

architecture implements of MULTIPLEXADOR_1BIT is
	signal q0, q1, q2, q3 : std_logic; 
begin 

	q0 <= a and not selector(0) and not selector(1);
	q1 <= b and selector(0) and not selector(1);
	q2 <= c and not selector(0) and selector(1);
	q3 <= d and selector(0) and selector(1);
	
	x <= q0 or q1 or q2 or q3;
	
end implements;