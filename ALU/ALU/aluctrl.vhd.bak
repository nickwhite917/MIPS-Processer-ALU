library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity aluctrl is 
port(
	ALUOp: in std_logic_vector(1 downto 0); --ALUOp1/ALUOp0
	Func: in std_logic_vector(5 downto 0); --6-bit func
	ALUctl: out std_logic_vector(3 downto 0)
);
end aluctrl;

architecture arch of aluctrl is

--signal
signal ALUOp_&_Func: std_logic_vector(7 downto 0);
begin 

ALUOp_&_Func = ALUOp & Func;

with ALUOp_&_Func select
ALUctl <= "0010" when "10100000", 
		  "0110" when "10100010",
		  "0111" when "10101010",
		  "0000" when "10100100",
		  "0001" when "10100101",
		  "1100" when "10100111",
		  "0010" when "00000000",
		  "0110" when others;	

end arch_aluctrl;