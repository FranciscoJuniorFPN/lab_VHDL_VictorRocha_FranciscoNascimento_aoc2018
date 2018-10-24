library ieee;
use ieee.std_logic_1164.all;

ENTITY NOT_port IS
PORT(
	A : IN STD_LOGIC;
	F : OUT STD_LOGIC
);
END NOT_port;

ARCHITECTURE behavior OF NOT_port IS
BEGIN
	F <= NOT A;
END behavior;