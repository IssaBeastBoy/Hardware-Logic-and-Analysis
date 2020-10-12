library IEEE;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Task_2 IS
    Port ( 
        A, B : IN std_logic_vector(7 downto 0);
        S : OUT std_logic_vector(8 downto 0)
--        Carry :  OUT STD_LOGIC
    );
end Task_2;

architecture Behavioral of Task_2 is
SIGNAL AnB_SumNum: integer;
SIGNAL SUM_bits:  std_logic_vector (8 downto 0) := "000000000";

begin
     AnB_SumNum <= conv_integer(A) + conv_integer(B); 
     Sum_bits <= conv_std_logic_vector(AnB_SumNum, 9);
     S <= Sum_bits(8 downto 0);
--     Carry <= Sum_bits(8);
      
end Behavioral;
