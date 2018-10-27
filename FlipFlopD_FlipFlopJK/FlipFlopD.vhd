library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port (
	
		d, clk : in std_logic;
		q0,q1 : inout std_logic 
	
	);
end FlipFlopD;

architecture implements of FlipFlopD is
	signal r, s, k : std_logic;
	
	component LatchD
		port(
		
			d, enable : in std_logic;
			q0,q1 : inout std_logic 
		
		);
	end component;
	
begin 
	
	G01 : LatchD port map (d, clk, s, k);
	r <= not clk;
	G02 : LatchD port map (s, r, q0, q1);


end implements;