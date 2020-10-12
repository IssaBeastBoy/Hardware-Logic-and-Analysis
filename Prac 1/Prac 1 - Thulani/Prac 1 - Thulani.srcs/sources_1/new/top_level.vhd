LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d1_d2_and IS
    PORT (
        d1, d2, clock : IN STD_LOGIC;
        output : OUT STD_LOGIC
     );
END d1_d2_and;

ARCHITECTURE behavior OF d1_d2_and IS
BEGIN
    output <= d1 AND d2;
END behavior;
