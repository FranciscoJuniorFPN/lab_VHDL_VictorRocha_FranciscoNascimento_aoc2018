library ieee;
use ieee.std_logic_1164.all;

ENTITY XOR_port IS
PORT(
	A, B : IN  STD_LOGIC;
	pout : OUT STD_LOGIC
);
END XOR_port;

ARCHITECTURE behavior OF XOR_port IS

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

COMPONENT NOT_port IS
PORT(
	A : IN STD_LOGIC;
	F : OUT STD_LOGIC
);

END COMPONENT;


SIGNAL SNOT1: STD_LOGIC;
SIGNAL SNOT2: STD_LOGIC;
SIGNAL SAND1: STD_LOGIC;
SIGNAL SAND2: STD_LOGIC;


BEGIN
	G1: NOT_port port map (B, SNOT1);
	G2: AND_port port map (A, SNOT1, SAND1);
	G3: NOT_port port map (A, SNOT2);
	G4: AND_port port map (SNOT2, B, SAND2);
	G5: OR_port  port map (SAND1, SAND2, pout);
END behavior;