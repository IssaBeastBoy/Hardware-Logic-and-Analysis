library IEEE;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Task_3 is
  Port (
        clock : IN STD_LOGIC;
        led : OUT std_logic_vector(15 DOWNTO 0));
end Task_3;

architecture Behavioral of Task_3 is
 signal PWM_maxHz :integer := 1000000;
 signal duty_cycleCount: integer := 0;
 signal duty_cyclePercent: integer := 0;
 signal count: integer := 1000000;
 signal direction: integer := 1;
 signal light: std_logic;
 
begin
    
    process(clock)
        
        begin
            
            if rising_edge(clock) then
                if direction = 1 --going upward
                then            
                    if duty_cycleCount < count
                    then
                        count <= count - 1;
                        light <= '0';                  
                    end if;
                     if duty_cycleCount >= count
                    then
                        count <= count - 1;
                        light <= '1';                  
                    end if;
                    if count = 0
                    then
                        duty_cyclePercent <= duty_cyclePercent + 1;
                        duty_cycleCount  <=  ((PWM_maxHz * duty_cyclePercent)/ 100);
                        count  <=  PWM_maxHz;
                        light <= '1';
                    end if;
                    if duty_cyclePercent = 100
                    then 
                        direction  <=  0;
                        count  <=  0;
                    end if;
                 end if;
                 
                 if direction = 0 --going downward
                 then            
                    if duty_cycleCount <= count
                    then
                        count  <=  count + 1;
                        light <= '1';                  
                    end if;
                    if duty_cycleCount > count
                    then
                        count  <=  count + 1;
                        light <= '0';                  
                    end if;
                    if count = PWM_maxHz
                    then
                        duty_cyclePercent  <=  duty_cyclePercent - 1;
                        duty_cycleCount  <= ((PWM_maxHz *duty_cyclePercent)/100);
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
    
 led <= (others => light);
 
end Behavioral;
