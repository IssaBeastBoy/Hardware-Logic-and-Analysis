library IEEE;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Task_2 IS
    Port ( 
        A1, A2, A3, A4, A5, A6, A7, A8, B1, B2, B3, B4, B5, B6, B7, B8, clock : IN STD_LOGIC;
        Cout_8, S1, S2, S3, S4, S5, S6, S7, S8, one_Hz, fif_Hz, thid_HZ, six_Hz : OUT STD_LOGIC
    );
end Task_2;

architecture Behavioral of Task_2 is
    SIGNAL Cout_0, Cout_1, Cout_2, Cout_3, Cout_4, Cout_5, Cout_6, Cout_7: STD_LOGIC :='0';
    signal oneHz_counter: std_logic_vector(25 downto 0);
    signal clock_oneHz: std_logic;
    
    signal fifHz_counter: std_logic_vector(22 downto 0);
    signal clock_fifHz: std_logic;
    
    signal thidHz_counter: std_logic_vector(22 downto 0);
    signal clock_thidHz: std_logic;
    
    signal six_Hz_counter: std_logic_vector(21 downto 0);
    signal clock_six_Hz: std_logic;
 begin 
  
    Adder: process(A1, A2, A3, A4, A5, A6, A7, A8, B1, B2, B3, B4, B5, B6, B7, B8)
    begin
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
    end process Adder;
  
 -- 1 Hz converted on a 100 000 000 MHz is going to be 50 000 000
  One_HzPro: process(clock)
  begin
    if rising_edge(clock) then
        if oneHz_counter < "10111110101111000010000000" then
            oneHz_counter <= oneHz_counter + 1;
        else
            clock_oneHz <= not clock_oneHz;
            oneHz_counter <= (others => '0');
         end if;
    end if;
    end process One_HzPro;
    one_Hz <= clock_oneHz;
    
  -- 15 Hz converted on a 100 000 000 MHz is going to be 3 333 333  
   fif_HzPro: process(clock)
  begin
    if rising_edge(clock) then
        if fifHz_counter < "1100101101110011010101" then
            fifHz_counter <= fifHz_counter + 1;
        else
            clock_fifHz <= not clock_fifHz;
            fifHz_counter <= (others => '0');
         end if;
    end if;            
  end process fif_HzPro;
  fif_Hz <= clock_fifHz;
  
  -- 30 Hz converted on a 100 000 000 MHz is going to be 1 666 667
   thid_HzPro: process(clock)
  begin
    if rising_edge(clock) then
        if thidHz_counter < "110010110111001101011" then
            thidHz_counter <= thidHz_counter + 1;
        else
            clock_thidHz <= not clock_thidHz;
            thidHz_counter <= (others => '0');
         end if;
    end if;            
  end process thid_HzPro;
  thid_HZ <= clock_thidHz;
  
  -- 60 Hz converted on a 100 000 000 MHz is going to be 833 333
   Six_HzPro: process(clock)
  begin
    if rising_edge(clock) then
        if six_Hz_counter < "11001011011100110101" then
            six_Hz_counter <= six_Hz_counter + 1;
        else
            clock_six_Hz <= not clock_six_Hz;
            six_Hz_counter <= (others => '0');
         end if;
    end if;            
  end process Six_HzPro;
  six_Hz <= clock_six_Hz;
  
      
end Behavioral;