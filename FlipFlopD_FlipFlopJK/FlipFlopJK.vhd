library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
	port (
	
		j, k, clk : in std_logic;
		q,notq : inout std_logic 
	
	);
end FlipFlopJK;

architecture implements of FlipFlopJK is
	signal a, b, c : std_logic;
	
	component FlipFlopD
		port(
		
			d, clk : in std_logic;
			q0,q1 : inout std_logic 
		
		);
	end component;
	
begin 

	a <= j nand notq;
	b <= not k nand q;
	c <= a nand b;
	
	
	G01 : FlipFlopD port map (c, clk, q, notq);


end implements;