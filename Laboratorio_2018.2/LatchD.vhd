library ieee;
use ieee.std_logic_1164.all;

entity LatchD is
	port (
	
		d, enable : in std_logic;
		q0,q1 : inout std_logic 
	
	);
end LatchD;

architecture implements of LatchD is
	signal r,s : std_logic;
begin 

	r <= d nand enable;
	s <= not d nand enable;
	q0 <= r nand q1;
	q1 <= s nand q0;


end implements;