library ieee;
use ieee.std_logic_1164.all;

ENTITY OR_port IS
PORT(
	A, B : IN  STD_LOGIC;
	F 	 : OUT STD_LOGIC
);
END OR_port;

ARCHITECTURE behavior OF OR_port IS
BEGIN
	F <= A OR B;
	
END behavior;