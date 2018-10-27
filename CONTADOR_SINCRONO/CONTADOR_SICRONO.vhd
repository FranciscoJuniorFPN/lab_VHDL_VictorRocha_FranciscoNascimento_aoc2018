library ieee;
use ieee.std_logic_1164.all;

entity CONTADOR_SICRONO is
	port (
	
		clk : in std_logic;
		s : inout std_logic_vector(4 downto 0)
	
	);
end CONTADOR_SICRONO;

architecture implements of CONTADOR_SICRONO is
	signal a, b, lixo00, lixo01, lixo02, lixo03 : std_logic;
	
	component FlipFlopJK
		port(
		
			j, k, clk : in std_logic;
			q,notq : inout std_logic 
		
		);
	end component;
	
begin 
	
	

end implements;