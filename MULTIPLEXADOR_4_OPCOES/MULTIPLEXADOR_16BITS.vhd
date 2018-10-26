library	ieee;
use ieee.std_logic_1164.all;

entity MULTIPLEXADOR_16BITS is
	port (
	
		a, b, c, d  : in  std_ulogic_vector(15 downto 0);
		selector    : in  std_ulogic_vector( 1 downto 0);
		q           : out std_ulogic_vector(15 downto 0)
	);
end MULTIPLEXADOR_16BITS;

architecture implements of MULTIPLEXADOR_16BITS is
	component MULTIPLEXADOR_1BIT
	port (
	
		a, b, c, d  : in std_ulogic;
		selector    : in std_ulogic_vector(1 downto 0);
		x           : out std_ulogic
	);
end component;
begin 

	G00: MULTIPLEXADOR_1BIT port map(a(0), b(0), c(0), d(0), selector(1 downto 0), q(0));
	G01: MULTIPLEXADOR_1BIT port map(a(1), b(1), c(1), d(1), selector(1 downto 0), q(1));
	G02: MULTIPLEXADOR_1BIT port map(a(2), b(2), c(2), d(2), selector(1 downto 0), q(2));
	G03: MULTIPLEXADOR_1BIT port map(a(3), b(3), c(3), d(3), selector(1 downto 0), q(3));
	G04: MULTIPLEXADOR_1BIT port map(a(4), b(4), c(4), d(4), selector(1 downto 0), q(4));
	G05: MULTIPLEXADOR_1BIT port map(a(5), b(5), c(5), d(5), selector(1 downto 0), q(5));
	G06: MULTIPLEXADOR_1BIT port map(a(6), b(6), c(6), d(6), selector(1 downto 0), q(6));
	G07: MULTIPLEXADOR_1BIT port map(a(7), b(7), c(7), d(7), selector(1 downto 0), q(7));
	G08: MULTIPLEXADOR_1BIT port map(a(8), b(8), c(8), d(8), selector(1 downto 0), q(8));
	G09: MULTIPLEXADOR_1BIT port map(a(9), b(9), c(9), d(9), selector(1 downto 0), q(9));
	G10: MULTIPLEXADOR_1BIT port map(a(10), b(10), c(10), d(10), selector(1 downto 0), q(10));
	G11: MULTIPLEXADOR_1BIT port map(a(11), b(11), c(11), d(11), selector(1 downto 0), q(11));
	G12: MULTIPLEXADOR_1BIT port map(a(12), b(12), c(12), d(12), selector(1 downto 0), q(12));
	G13: MULTIPLEXADOR_1BIT port map(a(13), b(13), c(13), d(13), selector(1 downto 0), q(13));
	G14: MULTIPLEXADOR_1BIT port map(a(14), b(14), c(14), d(14), selector(1 downto 0), q(14));
	G15: MULTIPLEXADOR_1BIT port map(a(15), b(15), c(15), d(15), selector(1 downto 0), q(15));
	
end implements;