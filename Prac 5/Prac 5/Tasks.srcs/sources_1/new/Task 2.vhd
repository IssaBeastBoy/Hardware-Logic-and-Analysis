LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Task_2 is
PORT (
        Fsub_A: IN STD_LOGIC;
        Fsub_B: IN STD_LOGIC;
        Fsub_Bin : IN STD_LOGIC;
        Fsub_diff : OUT STD_LOGIC;
        Fsub_Bout : OUT STD_LOGIC
     );
end Task_2;

architecture Behavioral of Task_2 is

begin
   Fsub_diff <= (Fsub_A xor Fsub_B) XOR Fsub_Bin;
   Fsub_Bout <= (NOT Fsub_A AND Fsub_B) OR ( (NOT (Fsub_A xor Fsub_B) AND Fsub_Bin) OR Fsub_Bin );

end Behavioral;
