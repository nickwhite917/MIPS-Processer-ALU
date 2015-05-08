library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TopLevelALU is 
port(
	A,B: in std_logic_vector(3 downto 0);
	--A,B: in std_logic_vector(31 downto 0);
	--shamt: in std_logic_vector(4 downto 0);
	oled : out std_logic_vector(27 downto 0);
	--ALUOut : out std_logic_vector(31 downto 0);
	zeroFlag: out std_logic;
	ALUctl: in std_logic_vector(3 downto 0)
);
end TopLevelALU;


architecture arch_TopLevelALU of TopLevelALU is
signal Cin: std_logic;
signal Result, Cout: std_logic_vector (3 downto 0);
begin

-- instantiate the bitALUs
--bit ALU's would be extended for 28 more cascaded entities
A0 : entity work.bitALU port map(A => A(0),B => B(0),Cin => '0', ALUctl(3 downto 2) => ALUctl (3 downto 2), 
											ALUctl(1 downto 0) => not ALUctl (1 downto 0),Cout => Cout(0),Result => Result(0));
A1 : entity work.bitALU port map(A => A(1),B => B(1),Cin => Cout(0), ALUctl(3 downto 2) => ALUctl (3 downto 2), 
											ALUctl(1 downto 0) => not ALUctl (1 downto 0),Cout => Cout(1),Result => Result(1));
A2 : entity work.bitALU port map(A => A(2),B => B(2),Cin => Cout(1), ALUctl(3 downto 2) => ALUctl (3 downto 2), 
											ALUctl(1 downto 0) => not ALUctl (1 downto 0),Cout => Cout(2),Result => Result(2));
A3 : entity work.bitALU port map(A => A(3),B => B(3),Cin => Cout(2), ALUctl(3 downto 2) => ALUctl (3 downto 2), 
											ALUctl(1 downto 0) => not ALUctl (1 downto 0),Cout => Cout(3),Result => Result(3));

--instantiate the hex led outputs from left to right ALUctl...A...B...Result
hex0: entity work.hex port map(i => Result,o => oled(6 downto 0) );
hex1: entity work.hex port map(i => B,o => oled(13 downto 7) );
hex2: entity work.hex port map(i => A,o => oled(20 downto 14) );
hex3: entity work.hex port map(i(3 downto 2) => ALUctl (3 downto 2),
										 i(1 downto 0) => not ALUctl(1 downto 0),o => oled(27 downto 21) );

--zeroFlag logic
--for beq and bne.  BranchNE would be the 'not' of this output
process (ALUctl, Result)
begin
	--ALUctl needs to be 0110
	if (ALUctl(3 downto 2)="01") and (not ALUctl(1 downto 0)="10") and (Result="0000") then 
		zeroFlag<='1';
	else
		zeroFlag<='0';
	end if;
end process;



	
end arch_TopLevelALU;