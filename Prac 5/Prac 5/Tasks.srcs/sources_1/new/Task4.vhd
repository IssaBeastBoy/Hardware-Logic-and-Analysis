library IEEE;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Task_4 is
  Port (
        clock : IN STD_LOGIC;
        led1, led2, led3, led4, led5, led6, led7, led8, led9, led10, led11, led12, led13, led14, led15, led16: OUT std_logic);
end Task_4;

architecture Behavioral of Task_4 is
 signal PWM_maxHz :integer := 20000000;
 signal light1, light2, light3, light4, light5, light6, light7, light8, light9, light10, light11, light12, light13, light14, light15, light16: std_logic;
 
 signal duty_cycleCount1: integer := 5000000;
 signal duty_cyclePercent1: integer := 25;
 signal stop1 : integer := 0;
 
 signal duty_cycleCount2: integer := 10000000;
 signal duty_cyclePercent2: integer := 50;
 signal stop2 : integer := 0;
 
 signal duty_cycleCount3: integer := 150000000;
 signal duty_cyclePercent3: integer := 75;
signal stop3 : integer := 0;
 
 signal duty_cycleCount4: integer := 20000000;
 signal duty_cyclePercent4: integer := 100;
 signal stop4 : integer := 0;
 
 signal duty_cycleCount5: integer := 0;
 signal duty_cyclePercent5: integer := 0;
 signal stop5 : integer := 0;
 
 signal duty_cycleCount6: integer := 0;
 signal duty_cyclePercent6: integer := 0;
 signal stop6 : integer := 0;
 
 signal duty_cycleCount7: integer := 0;
 signal duty_cyclePercent7: integer := 0;
 signal stop7 : integer := 0;
 
 signal duty_cycleCount8: integer := 0;
 signal duty_cyclePercent8: integer := 0;
 signal stop8 : integer := 0;
 
 signal duty_cycleCount9: integer := 0;
 signal duty_cyclePercent9: integer := 0;
 signal stop9 : integer := 0;
 
 signal duty_cycleCount10: integer := 0;
 signal duty_cyclePercent10: integer := 0;
 signal stop10 : integer := 0;
 
 signal duty_cycleCount11: integer := 0;
 signal duty_cyclePercent11: integer := 0;
 signal stop11 : integer := 0;
 
 signal duty_cycleCount12: integer := 0;
 signal duty_cyclePercent12: integer := 0;
 signal stop12 : integer := 0;
 
 signal duty_cycleCount13: integer := 0;
 signal duty_cyclePercent13: integer := 0;
 signal stop13 : integer := 0;
 
 signal duty_cycleCount14: integer := 0;
 signal duty_cyclePercent14: integer := 0;
 signal stop14 : integer := 0;
 
 signal duty_cycleCount15: integer := 0;
 signal duty_cyclePercent15: integer := 0;
 signal stop15 : integer := 0;
 
 signal duty_cycleCount16: integer := 0;
 signal duty_cyclePercent16: integer := 0;
 signal stop16 : integer := 0;
 
 signal duty_cycleCount_25 : integer := 5000000; 
 signal duty_cycleCount_50 : integer := 10000000; 
 signal duty_cycleCount_75 : integer := 150000000; 
 signal duty_cycleCount_100 : integer := 20000000; 
 
 signal stop : integer := 1;
 signal count: integer := 20000000;
 signal direction: integer := 1;
 signal end1: integer := 0;
 signal end2: integer := 0;
 signal light: std_logic_vector(15 DOWNTO 0);
 
begin
    
    process(clock)
        
        begin
            
            if rising_edge(clock) then
                if direction = 1 --going downward
                then    
                    if duty_cycleCount1 < count and stop1 = 0 ---LED 1
                    then
                        light1 <= '0';                  
                    end if;
                     if duty_cycleCount1 >= count and stop1 = 0
                    then
                        light1 <= '1';                  
                    end if;
                    
                    if duty_cycleCount2 < count and stop2 = 0  ---LED 2
                    then
                        light2 <= '0';                  
                    end if;
                     if duty_cycleCount2 >= count and stop2 = 0
                    then
                        light2 <= '1';                  
                    end if;
                    
                    if duty_cycleCount3 < count and stop3 = 0 ---LED 3
                    then
                        light3 <= '0';                  
                    end if;
                     if duty_cycleCount3 >= count and stop3 = 0
                    then
                        light3 <= '1';                  
                    end if;
                    
                    if duty_cycleCount4 < count and stop4 = 0---LED 4
                    then
                        light4 <= '0';                  
                    end if;
                     if duty_cycleCount4 >= count and stop4 = 0
                    then
                        light4 <= '1';                  
                    end if;
                    
                    if duty_cycleCount5 < count and stop5 = 0 ---LED 5
                    then
                        light5 <= '0';                  
                    end if;
                     if duty_cycleCount5 >= count and stop5 = 0
                    then
                        light5 <= '1';                  
                    end if;
                    
                    if duty_cycleCount6 < count and stop6 = 0---LED 6
                    then
                        light1 <= '0';                  
                    end if;
                     if duty_cycleCount6 >= count and stop6 = 0
                    then
                        light6 <= '1';                  
                    end if;
                    
                    if duty_cycleCount7 < count and stop7 = 0---LED 7
                    then
                        light7 <= '0';                  
                    end if;
                     if duty_cycleCount7 >= count and stop7 = 0
                    then
                        light7 <= '1';                  
                    end if;
                    
                    if duty_cycleCount8 < count and stop8 = 0---LED 8
                    then
                        light8 <= '0';                  
                    end if;
                     if duty_cycleCount8 >= count and stop8 = 0
                    then
                        light8 <= '1';                  
                    end if;
                    
                    if duty_cycleCount9 < count and stop9 = 0---LED 9
                    then
                        light9 <= '0';                  
                    end if;
                     if duty_cycleCount9 >= count and stop9 = 0
                    then
                        light9 <= '1';                  
                    end if;
                    
                    if duty_cycleCount10 < count  and stop10 = 0---LED 10
                    then
                        light10 <= '0';                  
                    end if;
                     if duty_cycleCount10 >= count and stop10 = 0
                    then
                        light10 <= '1';                  
                    end if;
                    
                    if duty_cycleCount11 < count and stop11 = 0 ---LED 11
                    then
                        light11 <= '0';                  
                    end if;
                     if duty_cycleCount11 >= count and stop11 = 0
                    then
                        light11 <= '1';                  
                    end if;
                    
                    if duty_cycleCount12 < count and stop12 = 0 ---LED 12
                    then
                       light12 <= '0';                  
                    end if;
                     if duty_cycleCount12 >= count and stop12 = 0
                    then
                        light12 <= '1';                  
                    end if;
                    
                    if duty_cycleCount13 < count and stop13 = 0 ---LED 13
                    then
                        light13 <= '0';                  
                    end if;
                     if duty_cycleCount13 >= count and stop13 = 0
                    then
                       light13 <= '1';                  
                    end if;
                    
                    if duty_cycleCount14 < count and stop14 = 0 ---LED 14
                    then
                        light14 <= '0';                  
                    end if;
                     if duty_cycleCount14 >= count and stop14 = 0
                    then
                        light14 <= '1';                  
                    end if;
                    
                    if duty_cycleCount15 < count and stop15 = 0 ---LED 15
                    then
                        light15 <= '0';                  
                    end if;
                     if duty_cycleCount15 >= count and stop15 = 0
                    then
                        light15 <= '1';                  
                    end if;
                    
                    if duty_cycleCount16 < count and stop16 = 0---LED 16
                    then
                        light16 <= '0';                  
                    end if;
                     if duty_cycleCount16 >= count and stop16 = 0
                    then
                        light16 <= '1';                  
                    end if;
                    if count = 0
                    then
                        count <= PWM_maxHz ;
                        if stop = 1
                        then 
                            light1 <= '0'; 
                            stop1 <= 1;
                            duty_cycleCount2 <= duty_cycleCount_25;
                            duty_cycleCount3 <= duty_cycleCount_50;
                            duty_cycleCount4 <= duty_cycleCount_75;
                            duty_cycleCount5 <= duty_cycleCount_100;
                        end if;
                        if stop = 2
                        then 
                            light2 <= '0'; 
                            stop2 <= 1;
                            duty_cycleCount3 <= duty_cycleCount_25;
                            duty_cycleCount4 <= duty_cycleCount_50;
                            duty_cycleCount5 <= duty_cycleCount_75;
                            duty_cycleCount6 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 3
                        then 
                            light3 <= '0'; 
                            stop3 <= 1;
                            duty_cycleCount4 <= duty_cycleCount_25;
                            duty_cycleCount5 <= duty_cycleCount_50;
                            duty_cycleCount6 <= duty_cycleCount_75;
                            duty_cycleCount7 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 4
                        then 
                            light4 <= '0'; 
                            stop4 <= 1;
                            duty_cycleCount5 <= duty_cycleCount_25;
                            duty_cycleCount6 <= duty_cycleCount_50;
                            duty_cycleCount7 <= duty_cycleCount_75;
                            duty_cycleCount8 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 5
                        then 
                            light5 <= '0'; 
                            stop5 <= 1;
                            duty_cycleCount6 <= duty_cycleCount_25;
                            duty_cycleCount7 <= duty_cycleCount_50;
                            duty_cycleCount8 <= duty_cycleCount_75;
                            duty_cycleCount9 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 6
                        then 
                            light6 <= '0'; 
                            stop6 <= 1;
                            duty_cycleCount7 <= duty_cycleCount_25;
                            duty_cycleCount8 <= duty_cycleCount_50;
                            duty_cycleCount9 <= duty_cycleCount_75;
                            duty_cycleCount10 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 7
                        then 
                            light7 <= '0'; 
                            stop7 <= 1;
                            duty_cycleCount8 <= duty_cycleCount_25;
                            duty_cycleCount9 <= duty_cycleCount_50;
                            duty_cycleCount10 <= duty_cycleCount_75;
                            duty_cycleCount11 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 8
                        then 
                            light8 <= '0'; 
                            stop8 <= 1;
                            duty_cycleCount9 <= duty_cycleCount_25;
                            duty_cycleCount10 <= duty_cycleCount_50;
                            duty_cycleCount11 <= duty_cycleCount_75;
                            duty_cycleCount12 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 9
                        then 
                            light9 <= '0'; 
                            stop9 <= 1;
                            duty_cycleCount10 <= duty_cycleCount_25;
                            duty_cycleCount11 <= duty_cycleCount_50;
                            duty_cycleCount12 <= duty_cycleCount_75;
                            duty_cycleCount13 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 10
                        then 
                            light10 <= '0'; 
                            stop10 <= 1;
                            duty_cycleCount11 <= duty_cycleCount_25;
                            duty_cycleCount12 <= duty_cycleCount_50;
                            duty_cycleCount13 <= duty_cycleCount_75;
                            duty_cycleCount14 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 11
                        then 
                            light11 <= '0'; 
                            stop11 <= 1;
                            duty_cycleCount12 <= duty_cycleCount_25;
                            duty_cycleCount13 <= duty_cycleCount_50;
                            duty_cycleCount14 <= duty_cycleCount_75;
                            duty_cycleCount15 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 12
                        then 
                            light12 <= '0'; 
                            stop12 <= 1;
                            duty_cycleCount13 <= duty_cycleCount_25;
                            duty_cycleCount14 <= duty_cycleCount_50;
                            duty_cycleCount15 <= duty_cycleCount_75;
                            duty_cycleCount16 <= duty_cycleCount_100;
                        end if;
                        
                        if stop = 13
                        then 
                            light13 <= '0'; 
                            stop13 <= 1;
                            duty_cycleCount14 <= duty_cycleCount_25;
                            duty_cycleCount15 <= duty_cycleCount_50;
                            duty_cycleCount16 <= duty_cycleCount_75;
                        end if;
                        
                        if stop = 14
                        then 
                            light14 <= '0'; 
                            stop14 <= 1;
                            duty_cycleCount15 <= duty_cycleCount_25;
                            duty_cycleCount16 <= duty_cycleCount_50;
                        end if;
                        
                        if stop = 15
                        then 
                            light15 <= '0'; 
                            stop15 <= 1;
                            duty_cycleCount16 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 16
                        then 
                            light16 <= '0';
                            direction <= 0;
                            stop16 <= 1;
                            stop <= 20;
                            count <= PWM_maxHz;
                        end if;
                        stop <= stop + 1;
                      else
                        count <= count -1;                        
                    end if;
                 end if;
                 
                if direction = 0 --going upwards
                then    
                    if duty_cycleCount1 >= count and stop1 = 0 ---LED 1
                    then
                        light1 <= '1';                             
                    end if;
                     if duty_cycleCount1 < count and stop1 = 0
                    then
                        light1 <= '0';                  
                    end if;
                    
                    if duty_cycleCount2 >= count and stop2 = 0  ---LED 2
                    then
                        light2 <= '1';                  
                    end if;
                     if duty_cycleCount2<count and stop2 = 0
                    then
                        light2 <= '0';                  
                    end if;
                    
                    if duty_cycleCount3  >=  count and stop3 = 0 ---LED 3
                    then
                        light3 <= '1';                  
                    end if;
                     if duty_cycleCount3 < count and stop3 = 0
                    then
                        light3 <= '0';                  
                    end if;
                    
                    if duty_cycleCount4  >= count and stop4 = 0---LED 4
                    then
                        light4 <= '1';                  
                    end if;
                     if duty_cycleCount4 < count and stop4 = 0
                    then
                        light4 <= '0';                  
                    end if;
                    
                    if duty_cycleCount5  >= count and stop5 = 0 ---LED 5
                    then
                        light5 <= '1';                  
                    end if;
                     if duty_cycleCount5 < count and stop5 = 0
                    then
                        light5 <= '0';                  
                    end if;
                    
                    if duty_cycleCount6  >=  count and stop6 = 0---LED 6
                    then
                        light1 <= '1';                  
                    end if;
                     if duty_cycleCount6 < count and stop6 = 0
                    then
                        light6 <= '0';                  
                    end if;
                    
                    if duty_cycleCount7  >= count and stop7 = 0---LED 7
                    then
                        light7 <= '1';                  
                    end if;
                     if duty_cycleCount7 < count and stop7 = 0
                    then
                        light7 <= '0';                  
                    end if;
                    
                    if duty_cycleCount8  >= count and stop8 = 0---LED 8
                    then
                        light8 <= '1';                  
                    end if;
                     if duty_cycleCount8 < count and stop8 = 0
                    then
                        light8 <= '0';                  
                    end if;
                    
                    if duty_cycleCount9 >= count and stop9 = 0---LED 9
                    then
                        light9 <= '1';                  
                    end if;
                     if duty_cycleCount9 < count and stop9 = 0
                    then
                        light9 <= '0';                  
                    end if;
                    
                    if duty_cycleCount10 >=  count  and stop10 = 0---LED 10
                    then
                        light10 <= '1';                  
                    end if;
                     if duty_cycleCount10 < count and stop10 = 0
                    then
                        light10 <= '0';                  
                    end if;
                    
                    if duty_cycleCount11  >= count and stop11 = 0 ---LED 11
                    then
                        light11 <= '1';                  
                    end if;
                     if duty_cycleCount11 < count and stop11 = 0
                    then
                        light11 <= '0';                  
                    end if;
                    
                    if duty_cycleCount12  >= count and stop12 = 0 ---LED 12
                    then
                       light12 <= '1';                  
                    end if;
                     if duty_cycleCount12 < count and stop12 = 0
                    then
                        light12 <= '0';                  
                    end if;
                    
                    if duty_cycleCount13  >= count and stop13 = 0 ---LED 13
                    then
                        light13 <= '1';                  
                    end if;
                     if duty_cycleCount13 < count and stop13 = 0
                    then
                       light13 <= '0';                  
                    end if;
                    
                    if duty_cycleCount14  >= count and stop14 = 0 ---LED 14
                    then
                        light14 <= '1';                  
                    end if;
                     if duty_cycleCount14  < count and stop14 = 0
                    then
                        light14 <= '0';                  
                    end if;
                    
                    if duty_cycleCount15  >= count and stop15 = 0 ---LED 15
                    then
                        light15 <= '1';                  
                    end if;
                     if duty_cycleCount15 < count and stop15 = 0
                    then
                        light15 <= '0';                  
                    end if;
                    
                    if duty_cycleCount16  >= count and stop16 = 0---LED 16
                    then
                        light16 <= '1';                  
                    end if;
                     if duty_cycleCount16 < count and stop16 = 0
                    then
                        light16 <= '0';                  
                    end if;
                    if count = PWM_maxHz
                    then
                        count <= 0;
                        
                        if stop = 1
                        then 
                            light1 <= '0';
                            direction <= 1;
                            count <= PWM_maxHz; 
                            stop1 <=0;
                            stop2 <=0;
                            stop3 <=0;
                            stop4 <=0;
                            stop5 <=0;
                            stop6 <=0;
                            stop7 <=0;
                            stop8 <=0;
                            stop9 <=0;
                            stop10 <=0;
                            stop11 <=0;
                            stop12 <=0;
                            stop13 <=0;
                            stop14 <=0;
                            stop15 <=0;
                            stop16 <=0;
                            duty_cycleCount1 <= 0;
                            duty_cycleCount2 <= 0;
                            duty_cycleCount3 <= 0;
                            duty_cycleCount4 <= 0;
                            duty_cycleCount5 <= 0;
                            duty_cycleCount6 <= 0;
                            duty_cycleCount7 <= 0;
                            duty_cycleCount8 <= 0;
                            duty_cycleCount9 <= 0;
                            duty_cycleCount10 <= 0;
                            duty_cycleCount11 <= 0;
                            duty_cycleCount12 <= 0;
                            duty_cycleCount13 <= 0;
                            duty_cycleCount14 <= 0;
                            duty_cycleCount15 <= 0;
                            duty_cycleCount16 <= 0;
                        end if;
                        
                        if stop = 2
                        then 
                            light2 <= '0'; 
                            stop2 <= 1;
                            duty_cycleCount1 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 3
                        then 
                            light3 <= '0'; 
                            stop3 <= 1;
                            duty_cycleCount1 <= duty_cycleCount_50;
                            duty_cycleCount2 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 4
                        then 
                            light4 <= '0'; 
                            stop4 <= 1;
                            duty_cycleCount1 <= duty_cycleCount_75;
                            duty_cycleCount2 <= duty_cycleCount_50;
                            duty_cycleCount3 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 5
                        then 
                            light5 <= '0'; 
                            stop5 <= 1;
                            stop1 <= 0;
                            duty_cycleCount1 <= duty_cycleCount_100;
                            duty_cycleCount2 <= duty_cycleCount_75;
                            duty_cycleCount3 <= duty_cycleCount_50;
                            duty_cycleCount4 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 6
                        then 
                            light6 <= '0'; 
                            stop6 <= 1;
                            stop2 <= 0;
                            duty_cycleCount2 <= duty_cycleCount_100;
                            duty_cycleCount3 <= duty_cycleCount_75;
                            duty_cycleCount4 <= duty_cycleCount_50;
                            duty_cycleCount5 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 7
                        then 
                            light7 <= '0'; 
                            stop7 <= 1;
                            stop3 <= 0;
                            duty_cycleCount3 <= duty_cycleCount_100;
                            duty_cycleCount4 <= duty_cycleCount_75;
                            duty_cycleCount5 <= duty_cycleCount_50;
                            duty_cycleCount6 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 8
                        then 
                            light8 <= '0'; 
                            stop8 <= 1;
                            stop4 <= 0;
                            duty_cycleCount4 <= duty_cycleCount_100;
                            duty_cycleCount5 <= duty_cycleCount_75;
                            duty_cycleCount6 <= duty_cycleCount_50;
                            duty_cycleCount7 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 9
                        then 
                            light9 <= '0'; 
                            stop9 <= 1;
                            stop5 <= 0;
                            duty_cycleCount5 <= duty_cycleCount_100;
                            duty_cycleCount6 <= duty_cycleCount_75;
                            duty_cycleCount7 <= duty_cycleCount_50;
                            duty_cycleCount8 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 10
                        then 
                            light10 <= '0'; 
                            stop10 <= 1;
                            stop6 <= 0;
                            duty_cycleCount6 <= duty_cycleCount_100;
                            duty_cycleCount7 <= duty_cycleCount_75;
                            duty_cycleCount8 <= duty_cycleCount_50;
                            duty_cycleCount9 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 11
                        then 
                            light11 <= '0'; 
                            stop11 <= 1;
                            stop7 <= 0;
                            duty_cycleCount7 <= duty_cycleCount_100;
                            duty_cycleCount8 <= duty_cycleCount_75;
                            duty_cycleCount9 <= duty_cycleCount_50;
                            duty_cycleCount10 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 12
                        then 
                            light12 <= '0'; 
                            stop12 <= 1;
                            stop8 <= 0;
                            duty_cycleCount8 <= duty_cycleCount_100;
                            duty_cycleCount9 <= duty_cycleCount_75;
                            duty_cycleCount10 <= duty_cycleCount_50;
                            duty_cycleCount11 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 13
                        then 
                            light13 <= '0'; 
                            stop13 <= 1;
                            stop9 <= 0;
                            duty_cycleCount9 <= duty_cycleCount_100;
                            duty_cycleCount10 <= duty_cycleCount_75;
                            duty_cycleCount11 <= duty_cycleCount_50;
                            duty_cycleCount12 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 14
                        then 
                            light14 <= '0'; 
                            stop14 <= 1;
                            stop10 <= 0;
                            duty_cycleCount10 <= duty_cycleCount_100;
                            duty_cycleCount11 <= duty_cycleCount_75;
                            duty_cycleCount12 <= duty_cycleCount_50;
                            duty_cycleCount13 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 15
                        then 
                            light15 <= '0'; 
                            stop15 <= 1;
                            stop11 <= 0;
                            duty_cycleCount11 <= duty_cycleCount_100;
                            duty_cycleCount12 <= duty_cycleCount_75;
                            duty_cycleCount13 <= duty_cycleCount_50;
                            duty_cycleCount14 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 16
                        then 
                            light16 <= '0'; 
                            stop16 <= 1;
                            stop13 <= 0;
                            duty_cycleCount12 <= duty_cycleCount_100;
                            duty_cycleCount13 <= duty_cycleCount_75;
                            duty_cycleCount14 <= duty_cycleCount_50;
                            duty_cycleCount15 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 17
                        then
                            stop13 <= 0;
                            duty_cycleCount13 <= duty_cycleCount_100;
                            duty_cycleCount14 <= duty_cycleCount_75;
                            duty_cycleCount15 <= duty_cycleCount_50;
                            duty_cycleCount16 <= duty_cycleCount_25;
                        end if;
                        
                        if stop = 18
                        then 
                            stop14 <= 0;
                            duty_cycleCount14 <= duty_cycleCount_100;
                            duty_cycleCount15 <= duty_cycleCount_75;
                            duty_cycleCount16 <= duty_cycleCount_50;
                        end if;
                        
                        if stop = 19
                        then 
                            stop15 <= 0;
                            duty_cycleCount15 <= duty_cycleCount_100;
                            duty_cycleCount16 <= duty_cycleCount_75;
                        end if;
                        
                        if stop = 20
                        then
                            stop16 <= 0;
                            duty_cycleCount16 <= duty_cycleCount_100;
                        end if;
                        stop <= stop - 1;
                      else
                        count <= count + 1;                        
                    end if;
                 end if;
                 
            end if;
    end process;
    
    led1 <= light1; 
    led2 <= light2; 
    led3 <= light3; 
    led4 <= light4; 
    led5 <= light5; 
    led6 <= light6; 
    led7 <= light7; 
    led8 <= light8; 
    led9 <= light9; 
    led10 <= light10; 
    led11 <= light11;
    led12 <= light12;
    led13 <= light13;
    led14 <= light14;
    led15 <= light15;
    led16 <= light16;   
 
end Behavioral;
