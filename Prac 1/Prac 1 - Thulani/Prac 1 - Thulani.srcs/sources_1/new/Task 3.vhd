LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY task_3 IS
    PORT (
        A1, A2, A3, A4, A5, A6, A7, A8, B1, B2, B3, B4, B5, B6, B7, B8, clock : IN STD_LOGIC;
        Cout_8, S1, S2, S3, S4, S5, S6, S7, S8  : OUT STD_LOGIC
     );
END task_3;

ARCHITECTURE behavior OF task_3 IS
SIGNAL Cout_0, Cout_1, Cout_2, Cout_3, Cout_4, Cout_5, Cout_6, Cout_7: STD_LOGIC :='0';
BEGIN    
    S1 <= (A1 XOR B1) XOR Cout_0;
    Cout_1 <= ((A1 XOR B1) AND Cout_0) OR (A1 AND B1);
    
    S2 <= (A2 XOR B2) XOR Cout_1;
    Cout_2 <= ((A2 XOR B2) AND Cout_1) OR (A2 AND B2);
    
    S3 <= (A3 XOR B3) XOR Cout_2;
    Cout_3 <= ((A3 XOR B3) AND Cout_2) OR (A3 AND B3);
    
    S4 <= (A4 XOR B4) XOR Cout_3;
    Cout_4 <= ((A4 XOR B4) AND Cout_3) OR (A4 AND B4);
    
    S5 <= (A5 XOR B5) XOR Cout_4;
    Cout_5 <= ((A5 XOR B5) AND Cout_4) OR (A5 AND B5);
    
    S6 <= (A6 XOR B6) XOR Cout_5;
    Cout_6 <= ((A6 XOR B6) AND  Cout_5) OR (A6 AND B6);
    
    S7 <= (A7 XOR B7) XOR Cout_6;
    Cout_7 <= ((A7 XOR B7) AND Cout_6) OR (A7 AND B7);
    
    S8 <= (A8 XOR B8) XOR Cout_7;                
    Cout_8 <= ((A8 XOR B8) AND Cout_7) OR (A8 AND B8);
    
END behavior;

