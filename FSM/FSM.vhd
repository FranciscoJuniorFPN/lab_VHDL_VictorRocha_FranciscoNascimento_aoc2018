library ieee;
use ieee.std_logic_1164.all;

entity FSM is 
port(
	clk:	in 	std_logic;
	P 	: 	in		std_logic;
	rst:	in 	std_logic;
	SA 	:	out 	std_logic;
	SB 	:	out 	std_logic;
	SC 	:	out 	std_logic;
	SD		: 	out 	std_logic;
	R	:	out 	std_logic
);
end FSM;

architecture FSM_BH of FSM is
type estados_maq is (A, B, C, D);
signal estado : estados_maq;

begin 
	process(clk, rst)
	begin
		if(rst = '1') then
			estado <= A;
			SA <= '1';
			
			
		elsif (clk = '1') then
			
			case estado is
			
				when A => 
					if P ='1' then
						estado <= B;
						SA <= '0';
						SB <= '1';
					end if;
				
				when B => 
					if P ='1' then
						estado <= C;
						SB <= '0';
						SC <= '1';
					end if;
				
				when C => 
					if P ='1' then
						estado <= D;
						SC <= '0';
						SD <= '1';
					end if;
				
				when D =>
					if P='1' then
						estado <= B;
						SD <= '0';
						SB <= '1';
					else
						estado <= A;
						SD <= '0';
						SA <= '1';
					end if;
				
				when others =>
					estado <= A;
					SA <= '1';
					SB <= '0';
					SC <= '0';
					SD <= '0';
			end case;
		end if;
	end process;
R <= '1' when estado = D else '0';
end FSM_BH;