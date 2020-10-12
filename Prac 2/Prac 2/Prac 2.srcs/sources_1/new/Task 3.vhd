library IEEE;                                        
USE ieee.std_logic_1164.all;                         
use ieee.std_logic_arith.all;                        
use ieee.std_logic_unsigned.all;                     
                                                     
entity Task_3 IS                                     
    Port (
        d1, d2, d3, d4, d5, d6, d7, d8 : IN STD_LOGIC;                                        
        Selected : IN std_logic_vector(2 downto 0);      
        Yout :  OUT STD_LOGIC                      
    );                                               
end Task_3;                                          
                                                     
architecture Behavioral of Task_3 is   
BEGIN
    Yout <= d1 WHEN Selected = "000" ELSE
            d2 WHEN Selected = "001" ELSE
            d3 WHEN Selected = "010" ELSE
            d4 WHEN Selected = "011" ELSE
            d5 WHEN Selected = "100" ELSE
            d6 WHEN Selected = "101" ELSE
            d7 WHEN Selected = "110" ELSE
            d8 WHEN Selected = "111" ELSE
            '0';
                       
                                                     
end Behavioral;                                      
                                                     
