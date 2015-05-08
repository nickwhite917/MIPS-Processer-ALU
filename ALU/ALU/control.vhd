library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity control is 
port(
	ID_op: in std_logic_vector(5 downto 0); --Represents the 6 bit instruction code from 31 downto 26
	ALUOp: out std_logic_vector(1 downto 0); --Represents the 2 bit control signla for the alu
	RegDst, ALUSrc, MemtoReg, Branch: out std_logic; --Outputs
	MemRead, MemWrite, RegWrite: out std_logic; --Outputs
	BranchNE, Jump: out std_logic -- Represents the controls for the BNE and J instructions
);
end control;

architecture arch_control of control is
signal op: std_logic_vector(5 downto 0);

begin
op <= ID_op;

with op select
ALUOp <= "00" when "100011", --lw
		 "00" when "101011", --sw
		 "00" when "000010", --j
		 "01" when "000100", --beq
		 "01" when "000101", --bne
		 "10" when "000000", --add, sub, slt, and, or, not
		 "11" when others;	 


RegDst <= '1' when op <= "000000" else 
		  '0'; --'1' with R-type, '0' with lw, 'x' with others
		  
ALUSrc <= '0' when op <= "000000" OR op <= "000100" OR op <= "000101" else
		  '1';
		   --'1' when op <= "100011" OR op <= "101011" OR op <= "000010";
		   --because for j ALUSrc= 'x' or doesn't care

MemtoReg <= '0' when op <= "000000" else 
		    '1'; --'0' with R-type, '1' with lw, 'x' with others
		    
Branch <= '1' when op <= "000100" else
		  '0';	
			
MemRead <= '1' when op <= "100011" else
		   '0';
		   
MemWrite <= '1' when op <= "101011" else
			'0';
		
RegWrite <= '1' when op <= "000000" OR op <= "100011" else
			'0';

BranchNE <= '1' when op <= "000101" else
			'0';
		
Jump <= '1' when op <= "000010" else
		'0';

end arch_control;