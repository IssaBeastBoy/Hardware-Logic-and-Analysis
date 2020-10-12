library IEEE;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Task_3 is
  Port (
        clock : IN STD_LOGIC;
        led1, led2, led3, led4, led5, led6, led7, led8, led9, led10, led11, led12, led13, led14, led15, led16: OUT std_logic);
end Task_3;

architecture Behavioral of Task_3 is
 signal PWM_maxHz :integer := 100000;
 
 signal duty_cycleCount1: integer := 25000;
 signal duty_cyclePercent1: integer := 25;
 
 signal duty_cycleCount2: integer := 50000;
 signal duty_cyclePercent2: integer := 50;
 
 signal duty_cycleCount3: integer := 75000;
 signal duty_cyclePercent3: integer := 75;
 
 signal duty_cycleCount4: integer := 0;
 signal duty_cyclePercent4: integer := 0;
 
 signal duty_cycleCount5: integer := 0;
 signal duty_cyclePercent5: integer := 0;
 
 signal duty_cycleCount6: integer := 0;
 signal duty_cyclePercent6: integer := 0;
 
 signal duty_cycleCount7: integer := 0;
 signal duty_cyclePercent7: integer := 0;
 
 signal duty_cycleCount8: integer := 0;
 signal duty_cyclePercent8: integer := 0;
 
 signal duty_cycleCount9: integer := 0;
 signal duty_cyclePercent9: integer := 0;
 
 signal duty_cycleCount10: integer := 0;
 signal duty_cyclePercent10: integer := 0;
 
 signal duty_cycleCount11: integer := 0;
 signal duty_cyclePercent11: integer := 0;
 
 signal duty_cycleCount12: integer := 0;
 signal duty_cyclePercent12: integer := 0;
 
 signal duty_cycleCount13: integer := 0;
 signal duty_cyclePercent13: integer := 0;
 
 signal duty_cycleCount14: integer := 0;
 signal duty_cyclePercent14: integer := 0;
 
 signal duty_cycleCount15: integer := 0;
 signal duty_cyclePercent15: integer := 0;
 
 signal duty_cycleCount: integer := 0;
 signal duty_cyclePercent: integer := 0;
 
 signal count: integer := 100000;
 signal direction: integer := 1;
 signal light: std_logic_vector(15 DOWNTO 0);
 
begin
    
    process(clock)
        
        begin
            
            if rising_edge(clock) then
                if direction = 1 --going upward
                then            
                    if duty_cycleCount1 < count ---LED 1
                    then
                        count <= count - 1;
                        led1 <= '0';                  
                    end if;
                     if duty_cycleCount1 >= count
                    then
                        count <= count - 1;
                        led1 <= '1';                  
                    end if;
                    
                    if duty_cycleCount2 < count ---LED 2
                    then
                        count <= count - 1;
                        led2 <= '0';                  
                    end if;
                     if duty_cycleCount2 >= count
                    then
                        count <= count - 1;
                        led2 <= '1';                  
                    end if;
                    
                    if duty_cycleCount3 < count ---LED 3
                    then
                        count <= count - 1;
                        led3 <= '0';                  
                    end if;
                     if duty_cycleCount3 >= count
                    then
                        count <= count - 1;
                        led3 <= '1';                  
                    end if;
                    
                    if duty_cycleCount4 < count ---LED 4
                    then
                        count <= count - 1;
                        led4 <= '0';                  
                    end if;
                     if duty_cycleCount4 >= count
                    then
                        count <= count - 1;
                        led4 <= '1';                  
                    end if;
                    
                    if duty_cycleCount5 < count ---LED 5
                    then
                        count <= count - 1;
                        led5 <= '0';                  
                    end if;
                     if duty_cycleCount5 >= count
                    then
                        count <= count - 1;
                        led5 <= '1';                  
                    end if;
                    
                    if duty_cycleCount6 < count ---LED 6
                    then
                        count <= count - 1;
                        led1 <= '0';                  
                    end if;
                     if duty_cycleCount6 >= count
                    then
                        count <= count - 1;
                        led6 <= '1';                  
                    end if;
                    
                    if duty_cycleCount7 < count ---LED 7
                    then
                        count <= count - 1;
                        led7 <= '0';                  
                    end if;
                     if duty_cycleCount7 >= count
                    then
                        count <= count - 1;
                        led7 <= '1';                  
                    end if;
                    
                    if duty_cycleCount8 < count ---LED 8
                    then
                        count <= count - 1;
                        led8 <= '0';                  
                    end if;
                     if duty_cycleCount8 >= count
                    then
                        count <= count - 1;
                        led8 <= '1';                  
                    end if;
                    
                    if duty_cycleCount9 < count ---LED 9
                    then
                        count <= count - 1;
                        led9 <= '0';                  
                    end if;
                     if duty_cycleCount9 >= count
                    then
                        count <= count - 1;
                        led9 <= '1';                  
                    end if;
                    
                    if duty_cycleCount10 < count ---LED 10
                    then
                        count <= count - 1;
                        led10 <= '0';                  
                    end if;
                     if duty_cycleCount10 >= count
                    then
                        count <= count - 1;
                        led10 <= '1';                  
                    end if;
                    
                    if duty_cycleCount11 < count ---LED 11
                    then
                        count <= count - 1;
                        led11 <= '0';                  
                    end if;
                     if duty_cycleCount11 >= count
                    then
                        count <= count - 1;
                        led11 <= '1';                  
                    end if;
                    
                    if duty_cycleCount12 < count ---LED 12
                    then
                        count <= count - 1;
                        led12 <= '0';                  
                    end if;
                     if duty_cycleCount12 >= count
                    then
                        count <= count - 1;
                        led12 <= '1';                  
                    end if;
                    
                    if duty_cycleCount13 < count ---LED 13
                    then
                        count <= count - 1;
                        led13 <= '0';                  
                    end if;
                     if duty_cycleCount13 >= count
                    then
                        count <= count - 1;
                        led13 <= '1';                  
                    end if;
                    
                    if duty_cycleCount14 < count ---LED 14
                    then
                        count <= count - 1;
                        led14 <= '0';                  
                    end if;
                     if duty_cycleCount14 >= count
                    then
                        count <= count - 1;
                        led14 <= '1';                  
                    end if;
                    
                    if duty_cycleCount15 < count ---LED 15
                    then
                        count <= count - 1;
                        led15 <= '0';                  
                    end if;
                     if duty_cycleCount15 >= count
                    then
                        count <= count - 1;
                        led15 <= '1';                  
                    end if;
                    
                    if count = 0
                    then
                       count  <=  PWM_maxHz;
                      else
                         duty_cyclePercent1 <= duty_cyclePercent1 + 1;
                         duty_cycleCount1  <=  ((PWM_maxHz * duty_cyclePercent1)/ 100);
                         duty_cyclePercent2 <= duty_cyclePercent2 + 1;
                         duty_cycleCount2  <=  ((PWM_maxHz * duty_cyclePercent2)/ 100);
                         duty_cyclePercent3 <= duty_cyclePercent3 + 1;
                         duty_cycleCount3  <=  ((PWM_maxHz * duty_cyclePercent3)/ 100);
                         duty_cyclePercent4 <= duty_cyclePercent4 + 1;
                         duty_cycleCount4  <=  ((PWM_maxHz * duty_cyclePercent4)/ 100);
                         duty_cyclePercent5 <= duty_cyclePercent5 + 1;
                         duty_cycleCount5  <=  ((PWM_maxHz * duty_cyclePercent5)/ 100);
                         duty_cyclePercent6 <= duty_cyclePercent6 + 1;
                         duty_cycleCount6  <=  ((PWM_maxHz * duty_cyclePercent6)/ 100);
                         duty_cyclePercent7 <= duty_cyclePercent7 + 1;
                         duty_cycleCount7  <=  ((PWM_maxHz * duty_cyclePercent7)/ 100);
                         duty_cyclePercent8 <= duty_cyclePercent8 + 1;
                         duty_cycleCount8  <=  ((PWM_maxHz * duty_cyclePercent8)/ 100);
                         duty_cyclePercent9 <= duty_cyclePercent9 + 1;
                         duty_cycleCount9  <=  ((PWM_maxHz * duty_cyclePercent9)/ 100);
                         duty_cyclePercent10 <= duty_cyclePercent10 + 1;
                         duty_cycleCount10  <=  ((PWM_maxHz * duty_cyclePercent10)/ 100);
                         duty_cyclePercent11 <= duty_cyclePercent11 + 1;
                         duty_cycleCount11  <=  ((PWM_maxHz * duty_cyclePercent11)/ 100);
                         duty_cyclePercent12 <= duty_cyclePercent12 + 1;
                         duty_cycleCount12  <=  ((PWM_maxHz * duty_cyclePercent12)/ 100);
                         duty_cyclePercent13 <= duty_cyclePercent13 + 1;
                         duty_cycleCount13  <=  ((PWM_maxHz * duty_cyclePercent13)/ 100);
                         duty_cyclePercent14 <= duty_cyclePercent14 + 1;
                         duty_cycleCount14  <=  ((PWM_maxHz * duty_cyclePercent14)/ 100);
                         duty_cyclePercent15 <= duty_cyclePercent15 + 1;
                         duty_cycleCount15  <=  ((PWM_maxHz * duty_cyclePercent15)/ 100);
                    end if;
                    if duty_cyclePercent3 = 100  -- LED 3
                    then 
                        led1 <= '0';
                        duty_cyclePercent1 <= 0;
                        duty_cyclePercent2 <= 25;
                        duty_cyclePercent3 <= 50;
                        duty_cyclePercent4 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent4 = 100  -- LED 4
                    then 
                        led2 <= '0';
                        duty_cyclePercent2 <= 0;
                        duty_cyclePercent3 <= 25;
                        duty_cyclePercent4 <= 50;
                        duty_cyclePercent5 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent5 = 100  -- LED 5
                    then 
                        led3 <= '0';
                        duty_cyclePercent3 <= 0;
                        duty_cyclePercent4 <= 25;
                        duty_cyclePercent5 <= 50;
                        duty_cyclePercent6 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent6 = 100  -- LED 6
                    then 
                        led4 <= '0';
                        duty_cyclePercent4 <= 0;
                        duty_cyclePercent5 <= 25;
                        duty_cyclePercent6 <= 50;
                        duty_cyclePercent7 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent7 = 100  -- LED 7
                    then 
                        led5 <= '0';
                        duty_cyclePercent5 <= 0;
                        duty_cyclePercent6 <= 25;
                        duty_cyclePercent7 <= 50;
                        duty_cyclePercent8 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent8 = 100  -- LED 8
                    then 
                        led6 <= '0';
                        duty_cyclePercent6 <= 0;
                        duty_cyclePercent7 <= 25;
                        duty_cyclePercent8 <= 50;
                        duty_cyclePercent9 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent9 = 100  -- LED 9
                    then 
                        led7 <= '0';
                        duty_cyclePercent7 <= 0;
                        duty_cyclePercent8 <= 25;
                        duty_cyclePercent9 <= 50;
                        duty_cyclePercent10 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent10 = 100  -- LED 10
                    then 
                        led8 <= '0';
                        duty_cyclePercent8 <= 0;
                        duty_cyclePercent9 <= 25;
                        duty_cyclePercent10 <= 50;
                        duty_cyclePercent11 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent10 = 100  -- LED 10
                    then 
                        led8 <= '0';
                        duty_cyclePercent8 <= 0;
                        duty_cyclePercent9 <= 25;
                        duty_cyclePercent10 <= 50;
                        duty_cyclePercent11 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent11 = 100  -- LED 11
                    then 
                        led9 <= '0';
                        duty_cyclePercent9 <= 0;
                        duty_cyclePercent10 <= 25;
                        duty_cyclePercent1 <= 50;
                        duty_cyclePercent11 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent10 = 100  -- LED 10
                    then 
                        led8 <= '0';
                        duty_cyclePercent8 <= 0;
                        duty_cyclePercent9 <= 25;
                        duty_cyclePercent10 <= 50;
                        duty_cyclePercent11 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent10 = 100  -- LED 10
                    then 
                        led8 <= '0';
                        duty_cyclePercent8 <= 0;
                        duty_cyclePercent9 <= 25;
                        duty_cyclePercent10 <= 50;
                        duty_cyclePercent11 <= 75;                                        
                    end if;
                    
                    if duty_cyclePercent10 = 100  -- LED 10
                    then 
                        led8 <= '0';
                        duty_cyclePercent8 <= 0;
                        duty_cyclePercent9 <= 25;
                        duty_cyclePercent10 <= 50;
                        duty_cyclePercent11 <= 75;                                        
                    end if;
                 end if;
                 
                 if direction = 0 --going downward
                 then            
                    if duty_cycleCount1 <= count
                    then
                        count  <=  count + 1;
                        light <= '1';                  
                    end if;
                    if duty_cycleCount1 > count
                    then
                        count  <=  count + 1;
                        light <= '0';                  
                    end if;
                    if count = PWM_maxHz
                    then
                        duty_cyclePercent1  <=  duty_cyclePercent1 - 1;
                        duty_cycleCount1  <= (PWM_maxHz * (duty_cyclePercent1 / 100));
                        count  <=  0;
                        light <= '1';
                    end if;
                    if duty_cyclePercent = 0
                    then 
                        direction  <=  1;
                        count  <=  PWM_maxHz;
                    end if;
               end if;
            end if;
    end process;
    
 
end Behavioral;
