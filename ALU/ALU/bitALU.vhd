library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bitALU is 
port(
	A,B,Cin: in std_logic; 
	ALUctl: in std_logic_vector(3 downto 0);
	Cout, Result: out std_logic
);
end bitALU;

architecture arch_bitALU of bitALU is
begin

	process(A,B,Cin,ALUctl)
	begin

		case ALUctl is
			
			--add, lw, sw
			when "0010" =>
				Cout <= (A and B) or ((A xor B) and Cin);
				Result <=(A xor B) xor Cin;
			
			--sub, beq, bne
			when "0110" =>
				if (A = B) then
					Cout <= Cin;
				elsif (A = '1') then 
					Cout <= '1';
				else
					Cout <= '0';
				end if;
				Result <= (A xor B) xor Cin;
			
			--slt
			when "0111" =>
				Cout <= 'Z';
				if (A = B) then
					Result <= '0';
				elsif (A = '1') then
					Result <= '0';
				else
					Result <= '1';
				end if;
				
			--and
			when "0000" =>
				Cout <= 'Z';
				Result <= A and B;
				
			--or	
			when "0001" =>
				Cout <= 'Z';
				Result <= A or B;
			
			--nor
			when "1100" =>
				Cout <= 'Z';
				Result <= not A and not B;
			
			--default case
			when others =>
				Cout <= 'Z';
				Result <= 'Z';
			
				
		end case;
	end process;
end arch_bitALU;
