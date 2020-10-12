library IEEE;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Task_3 IS
    Port ( 
        buttonIn, buttonOut,clock : IN STD_LOGIC;
        one_Hz, fif_Hz, thid_HZ, six_Hz : OUT STD_LOGIC
    );
end Task_3;

architecture Behavioral of Task_3 is
    SIGNAL Cout_0, Cout_1, Cout_2, Cout_3, Cout_4, Cout_5, Cout_6, Cout_7: STD_LOGIC :='0';
    signal Min_Hz: std_logic_vector(25 downto 0);
    signal oneHz_counter: std_logic_vector(25 downto 0);
    signal HZ_amount: integer:= 1;
    signal ticks: integer;
    signal Size: integer:= 100000000;
    signal clock_oneHz: std_logic;
    
    signal fifHz_counter: std_logic_vector(22 downto 0);
    signal clock_fifHz: std_logic;
    
    signal thidHz_counter: std_logic_vector(22 downto 0);
    signal clock_thidHz: std_logic;
    
    signal six_Hz_counter: std_logic_vector(21 downto 0);
    signal clock_six_Hz: std_logic;
 begin  
  
  clk: process(clock)
  begin
         
   if rising_edge(clock) then
        ticks <= (Size/HZ_amount)/2;
         Min_Hz <= conv_std_logic_vector(ticks, Min_Hz'length);
        if oneHz_counter < Min_Hz then
            oneHz_counter <= oneHz_counter + 1;
        else
            clock_oneHz <= not clock_oneHz;
            oneHz_counter <= (others => '0');
         end if;
    end if;
    end process clk;
    one_Hz <= clock_oneHz;
    
 upDownButto_HZ: process(buttonOut, buttonIn)
  begin
    if buttonOut = '1' then
        if HZ_amount > 1 then 
            HZ_amount <=  HZ_amount - 1;
         end if;
     end if;
     
    if buttonIn = '1' then
        HZ_amount <=  HZ_amount + 1;
        end if;

    end process upDownButto_HZ;
    
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