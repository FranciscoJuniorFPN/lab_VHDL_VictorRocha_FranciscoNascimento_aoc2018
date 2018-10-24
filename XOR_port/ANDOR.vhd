library ieee;
use ieee.std_logic_1164.all;

ENTITY ANDOR IS
PORT(
	A, B : IN  STD_LOGIC;
	pout 	 : OUT STD_LOGIC
);
END ANDOR;

ARCHITECTURE behavior OF ANDOR IS

COMPONENT AND_port IS
PORT(
	A, B: IN STD_LOGIC;
	F: OUT STD_LOGIC
);
END COMPONENT;

COMPONENT OR_port IS
PORT(
	A, B: IN STD_LOGIC;
	F: OUT STD_LOGIC
);
END COMPONENT;


SIGNAL SAND1: STD_LOGIC;
SIGNAL SAND2: STD_LOGIC;


BEGIN
	G1: AND_port port map (A, B, SAND1);
	G2: AND_port port map (A, B, SAND2);
	G3: OR_port port map  (SAND1, SAND2, pout);
	
END behavior;