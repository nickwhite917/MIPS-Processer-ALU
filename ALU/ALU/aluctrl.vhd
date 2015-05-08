library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity aluctrl is 
port(
	ALUOp: in std_logic_vector(1 downto 0); --Two bit control signal for ALUOp
	Func: in std_logic_vector(5 downto 0); --Represents the 6 bit function code for the ALU
	ALUctl: out std_logic_vector(3 downto 0) --Four bit signal for ALU
);
end aluctrl;

architecture arch_aluctrl of aluctrl is

--signal
signal ALUandFUNC: std_logic_vector(7 downto 0);
begin 

ALUandFUNC <= ALUOp & Func;

with ALUandFUNC select
ALUctl <= "0010" when "10100000", 
		  "0110" when "10100010",
		  "0111" when "10101010",
		  "0000" when "10100100",
		  "0001" when "10100101",
		  "1100" when "10100111",
		  "0010" when "00000000",
		  "0110" when others;	

end arch_aluctrl;