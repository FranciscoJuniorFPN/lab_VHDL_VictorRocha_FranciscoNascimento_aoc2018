library ieee;
use ieee.std_logic_1164.all;

ENTITY AND_port IS
PORT(
	A, B : IN  STD_LOGIC;
	F 	 : OUT STD_LOGIC
);
END AND_port;

ARCHITECTURE behavior OF AND_port IS
BEGIN
	F <= A AND B;

END behavior;