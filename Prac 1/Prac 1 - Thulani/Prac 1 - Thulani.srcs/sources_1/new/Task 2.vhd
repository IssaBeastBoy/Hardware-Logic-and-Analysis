LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY task_2 IS
    PORT (
        A, B, Cin, clock : IN STD_LOGIC;
        Cout, S  : OUT STD_LOGIC
     );
END task_2;

ARCHITECTURE behavior OF task_2 IS
BEGIN
    S <= (A XOR B) XOR Cin;
    Cout <= ((A XOR B) AND Cin) OR (A AND B);
    
END behavior;
