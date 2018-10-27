library ieee;
use ieee.std_logic_1164.all;

entity EXTENSOR_DE_8_PARA_16BITS is
	port(
	
		a : in std_logic_vector(7 downto 0);
		s : out std_logic_vector(15 downto 0)
	
	);
end EXTENSOR_DE_8_PARA_16BITS;
	
architecture implements of EXTENSOR_DE_8_PARA_16BITS is
begin 
	
	s <= "00000000" & a;
	
end implements;