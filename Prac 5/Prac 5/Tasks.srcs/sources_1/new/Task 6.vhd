LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
--use ieee.math_real.all;


ENTITY Task_6 IS
	PORT (
		d1, d2, clock : IN STD_LOGIC;
		output        : OUT STD_LOGIC;
		
		r             : OUT STD_LOGIC_VECTOR (3 downto 0);
		g             : OUT STD_LOGIC_VECTOR (3 downto 0);
		b             : OUT STD_LOGIC_VECTOR (3 downto 0);
		
		vsync         : OUT STD_LOGIC;
		hsync         : OUT STD_LOGIC
		 );
END Task_6;



ARCHITECTURE behavior OF Task_6 IS

COMPONENT clk_wiz_2
PORT
    (
    clk_out1 : OUT std_logic;
    clk_in1  : IN std_logic := '0'
    );
END COMPONENT;
signal p_clock : std_logic := '0';



signal b_output : std_logic := '0';
signal b_vsync  : std_logic := '0';
signal b_hsync  : std_logic := '0';

signal red : std_logic_vector (3 downto 0) := "0000";
signal green : std_logic_vector (3 downto 0) := "0000";
signal blue : std_logic_vector (3 downto 0) := "0000";

signal eye_oneS : integer := 300;
signal eye_twoS : integer := 674;
signal loca_lineS : integer := 200;
signal eye_oneE : integer := 350;
signal eye_twoE : integer := 724;
signal loca_lineE : integer := 250;

signal noseS : integer := 490;
signal noseE : integer := 534;
signal nose_LineS : integer := 350;
signal nose_lineE : integer := 450;

signal Lips_pixelOneLS : integer := 350;
signal Lips_pixelOneLE : integer := 400;
signal mouth_LineOneU : integer := 450;
signal mouth_lineOneD : integer := 500;
signal Lips_pixelOneRS : integer := 624;
signal Lips_pixelOneRE : integer := 674;

signal Lips_pixelTwoLS : integer := 400;
signal Lips_pixelTwoLE : integer := 450;
signal mouth_LineTwoU : integer := 500;
signal mouth_lineTwoD : integer := 550;
signal Lips_pixelTwoRS : integer := 574;
signal Lips_pixelTwoRE : integer := 624;

signal Lips_pixelThreeLS : integer := 450;
signal mouth_LineThreeU : integer := 550;
signal mouth_lineThreeD : integer := 600;
signal Lips_pixelThreeRE : integer := 574;

signal faceSide_LS : integer := 200;
signal faceSide_LE : integer := 204;
signal faceSide_RS : integer := 824;
signal faceSide_RE : integer := 828;
signal face_lenghtS : integer := 100;
signal face_lenghtE : integer := 620;

signal Chin_LS : integer := 200;
signal Chin_LE : integer := 828;
signal Chin_lenghtS : integer := 616;
signal Chin_lenghtE : integer := 620;

signal neck_LS : integer := 450;
signal neck_LE : integer := 454;
signal neck_RS : integer := 570;
signal neck_RE : integer := 574;
signal neck_lenghtS : integer := 620;
signal neck_lenghtE : integer := 806;

signal g_LS : integer := 624;
signal g_RS : integer := 664;
signal Aplha_S : integer := 630;
signal Aplha_E : integer := 765;
signal g_insideS : integer := 639;
signal g_insideE : integer := 654;
signal g_RDownE : integer := 680;
signal g_RUpS : integer := 738;

signal vert_count2AdderOne: INTEGER  := 5;
signal vert_count2AdderTwo: INTEGER  := 10;
signal Dig2Adder: INTEGER  := 1024;
signal hoz_count2AdderOne : INTEGER := 0;
signal hoz_count2AdderTwo : INTEGER := 3;

signal digPS : integer := 300;
signal digPE : integer := 674;
signal digLS : integer := 200;
signal digLE : integer := 350;

BEGIN

    pixel_clock : clk_wiz_2 port map(p_clock, clock);   -- 100Mhz in -> 40Mhz out: used for pixel clock

    PROCESS (p_clock)
    VARIABLE pixel_count : INTEGER RANGE 0 TO 1344 := 0;
    VARIABLE line_count  : INTEGER RANGE 0 TO 806  := 0;
    
    VARIABLE counter     : INTEGER RANGE 0 TO 1024  := 0;
    
    VARIABLE vert_count1AdderOne: INTEGER  := 0;
    VARIABLE vert_count1AdderTwo: INTEGER  := 10;
    VARIABLE Dig1Adder: INTEGER  := 1024;
    VARIABLE hoz_count1AdderOne : INTEGER := 0;
    VARIABLE hoz_count1AdderTwo : INTEGER := 10;
    
    VARIABLE vert_count2AdderOne: INTEGER  := 20;
    VARIABLE vert_count2AdderTwo: INTEGER  := 30;
    VARIABLE Dig2Adder: INTEGER  := 1024;
    VARIABLE hoz_count2AdderOne : INTEGER := 20;
    VARIABLE hoz_count2AdderTwo : INTEGER := 30;
    
    VARIABLE vert_count3AdderOne: INTEGER  := 40;
    VARIABLE vert_count3AdderTwo: INTEGER  := 50;
    VARIABLE Dig3Adder: INTEGER  := 1024;
    VARIABLE hoz_count3AdderOne : INTEGER := 40;
    VARIABLE hoz_count3AdderTwo : INTEGER := 50;
    
    VARIABLE vert_count4AdderOne: INTEGER  := 60;
    VARIABLE vert_count4AdderTwo: INTEGER  := 70;
    VARIABLE Dig4Adder: INTEGER  := 1024;
    VARIABLE hoz_count4AdderOne : INTEGER := 60;
    VARIABLE hoz_count4AdderTwo : INTEGER := 70;
    
    VARIABLE vert_count5AdderOne: INTEGER  := 80;
    VARIABLE vert_count5AdderTwo: INTEGER  := 90;
    VARIABLE Dig5Adder: INTEGER  := 1024;
    VARIABLE hoz_count5AdderOne : INTEGER := 80;
    VARIABLE hoz_count5AdderTwo : INTEGER := 90;
    
    VARIABLE vert_count6AdderOne: INTEGER  := 100;
    VARIABLE vert_count6AdderTwo: INTEGER  := 110;
    VARIABLE Dig6Adder: INTEGER  := 1024;
    VARIABLE hoz_count6AdderOne : INTEGER := 100;
    VARIABLE hoz_count6AdderTwo : INTEGER := 110;
    
    VARIABLE vert_count7AdderOne: INTEGER  := 120;
    VARIABLE vert_count7AdderTwo: INTEGER  := 130;
    VARIABLE Dig7Adder: INTEGER  := 1024;
    VARIABLE hoz_count7AdderOne : INTEGER := 120;
    VARIABLE hoz_count7AdderTwo : INTEGER := 130;
    
    VARIABLE vert_count8AdderOne: INTEGER  := 140;
    VARIABLE vert_count8AdderTwo: INTEGER  := 150;
    VARIABLE Dig8Adder: INTEGER  := 1024;
    VARIABLE hoz_count8AdderOne : INTEGER := 140;
    VARIABLE hoz_count8AdderTwo : INTEGER := 150;
    
    VARIABLE vert_count9AdderOne: INTEGER  := 160;
    VARIABLE vert_count9AdderTwo: INTEGER  := 170;
    VARIABLE Dig9Adder: INTEGER  := 1024;
    VARIABLE hoz_count9AdderOne : INTEGER := 160;
    VARIABLE hoz_count9AdderTwo : INTEGER := 170;
    
    VARIABLE vert_count10AdderOne: INTEGER  := 180;
    VARIABLE vert_count10AdderTwo: INTEGER  := 190;
    VARIABLE Dig10Adder: INTEGER  := 1024;
    VARIABLE hoz_count10AdderOne : INTEGER := 190;
    VARIABLE hoz_count10AdderTwo : INTEGER := 190;
    
    VARIABLE vert_count11AdderOne: INTEGER  := 200;
    VARIABLE vert_count11AdderTwo: INTEGER  := 210;
    VARIABLE Dig11Adder: INTEGER  := 1024;
    VARIABLE hoz_count11AdderOne : INTEGER := 200;
    VARIABLE hoz_count11AdderTwo : INTEGER := 210;
    
    VARIABLE vert_count12AdderOne: INTEGER  := 220;
    VARIABLE vert_count12AdderTwo: INTEGER  := 230;
    VARIABLE Dig12Adder: INTEGER  := 1024;
    VARIABLE hoz_count12AdderOne : INTEGER := 220;
    VARIABLE hoz_count12AdderTwo : INTEGER := 230;
    
    VARIABLE vert_count13AdderOne: INTEGER  := 240;
    VARIABLE vert_count13AdderTwo: INTEGER  := 250;
    VARIABLE Dig13Adder: INTEGER  := 1024;
    VARIABLE hoz_count13AdderOne : INTEGER := 240;
    VARIABLE hoz_count13AdderTwo : INTEGER := 250;
    
    VARIABLE vert_count14AdderOne: INTEGER  := 260;
    VARIABLE vert_count14AdderTwo: INTEGER  := 270;
    VARIABLE Dig14Adder: INTEGER  := 1024;
    VARIABLE hoz_count14AdderOne : INTEGER := 260;
    VARIABLE hoz_count14AdderTwo : INTEGER := 270;
    
    VARIABLE vert_count15AdderOne: INTEGER  := 280;
    VARIABLE vert_count15AdderTwo: INTEGER  := 290;
    VARIABLE Dig15Adder: INTEGER  := 1024;
    VARIABLE hoz_count15AdderOne : INTEGER := 280;
    VARIABLE hoz_count15AdderTwo : INTEGER := 290;
    
    VARIABLE vert_count16AdderOne: INTEGER  := 300;
    VARIABLE vert_count16AdderTwo: INTEGER  := 310;
    VARIABLE Dig16Adder: INTEGER  := 1024;
    VARIABLE hoz_count16AdderOne : INTEGER := 300;
    VARIABLE hoz_count16AdderTwo : INTEGER := 310;
    
    VARIABLE vert_count17AdderOne: INTEGER  := 320;
    VARIABLE vert_count17AdderTwo: INTEGER  := 330;
    VARIABLE Dig17Adder: INTEGER  := 1024;
    VARIABLE hoz_count17AdderOne : INTEGER := 320;
    VARIABLE hoz_count17AdderTwo : INTEGER := 330;
    
    VARIABLE vert_count18AdderOne: INTEGER  := 340;
    VARIABLE vert_count18AdderTwo: INTEGER  := 350;
    VARIABLE Dig18Adder: INTEGER  := 1024;
    VARIABLE hoz_count18AdderOne : INTEGER := 340;
    VARIABLE hoz_count18AdderTwo : INTEGER := 350;
    
    VARIABLE vert_count19AdderOne: INTEGER  := 360;
    VARIABLE vert_count19AdderTwo: INTEGER  := 370;
    VARIABLE Dig19Adder: INTEGER  := 1024;
    VARIABLE hoz_count19AdderOne : INTEGER := 360;
    VARIABLE hoz_count19AdderTwo : INTEGER := 370;
    
    VARIABLE vert_count20AdderOne: INTEGER  := 380;
    VARIABLE vert_count20AdderTwo: INTEGER  := 390;
    VARIABLE Dig20Adder: INTEGER  := 1024;
    VARIABLE hoz_count20AdderOne : INTEGER := 380;
    VARIABLE hoz_count20AdderTwo : INTEGER := 390;
    
    VARIABLE writeFrame: integer := 0;
    VARIABLE writeFrameTwo_S: integer := 0;
    VARIABLE writeFrameTwo_E: integer := 100;
    VARIABLE writeFrame_Two: integer := 0;
    VARIABLE writeFrame_S: integer := 50;
    VARIABLE writeFrame_E: integer := 150;
    
    BEGIN
        IF (rising_edge(p_clock))
        THEN
        
        
            IF(pixel_count < 1024 AND line_count < 768)  -- frame space
            THEN
                -- FRAME
                red   <= conv_std_logic_vector(line_count, 10)(9 downto 6);
                green <= conv_std_logic_vector(line_count, 10)(9 downto 6);
                blue  <= conv_std_logic_vector(line_count, 10)(9 downto 6);
                -- FRAME
                
                    
                    if(pixel_count > vert_count1AdderOne and pixel_count < vert_count1AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count2AdderOne and pixel_count < vert_count2AdderTwo )
                     then
                        red <= "1111";
                     end if;
                     
                     if(pixel_count > vert_count3AdderOne  and pixel_count < vert_count3AdderTwo )
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count4AdderOne and pixel_count < vert_count4AdderTwo )
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count5AdderOne and pixel_count < vert_count5AdderTwo )
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count6AdderOne and pixel_count < vert_count6AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count7AdderOne and pixel_count < vert_count7AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count8AdderOne and pixel_count < vert_count8AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count9AdderOne and pixel_count < vert_count9AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count10AdderOne and pixel_count < vert_count10AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count11AdderOne and pixel_count < vert_count11AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count12AdderOne + 220 and pixel_count < vert_count12AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count13AdderOne and pixel_count < vert_count13AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count14AdderOne and pixel_count < vert_count14AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count15AdderOne and pixel_count < vert_count15AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count16AdderOne  and pixel_count < vert_count16AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count17AdderOne and pixel_count < vert_count17AdderTwo)
                     then
                        red <= "1111";
                     end if;
                     
                     if(pixel_count > vert_count18AdderOne and pixel_count < vert_count18AdderTwo)
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count19AdderOne and pixel_count < vert_count19AdderTwo )
                     then
                        red <= "1111";
                     end if; 
                     
                     if(pixel_count > vert_count20AdderOne and pixel_count < vert_count20AdderTwo )
                     then
                        red <= "1111";
                     end if; 
                     
                    
                                                             
                    if ( (line_count > hoz_count1AdderOne ) and (line_count < hoz_count1AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
               
               if ( (line_count > hoz_count2AdderOne ) and (line_count < hoz_count2AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    
                    if ( (line_count > hoz_count3AdderOne ) and (line_count < hoz_count3AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count4AdderOne ) and (line_count < hoz_count4AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count5AdderOne ) and (line_count < hoz_count5AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count6AdderOne ) and (line_count < hoz_count6AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count7AdderOne ) and (line_count < hoz_count7AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count8AdderOne ) and (line_count < hoz_count8AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count9AdderOne ) and (line_count < hoz_count9AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count10AdderOne ) and (line_count < hoz_count10AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count11AdderOne ) and (line_count < hoz_count11AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count12AdderOne ) and (line_count < hoz_count12AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count13AdderOne ) and (line_count < hoz_count13AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count14AdderOne ) and (line_count < hoz_count14AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count15AdderOne ) and (line_count < hoz_count15AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count16AdderOne ) and (line_count < hoz_count16AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count17AdderOne ) and (line_count < hoz_count17AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count18AdderOne ) and (line_count < hoz_count18AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count19AdderOne ) and (line_count < hoz_count19AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                    if ( (line_count > hoz_count20AdderOne ) and (line_count < hoz_count20AdderTwo) )
                    then
                        blue <= "1111";
                    end if; 
                                     
                if(((pixel_count > eye_oneS AND pixel_count < eye_oneE) OR (pixel_count > eye_twoS AND pixel_count < eye_twoE)) and (line_count > loca_lineS AND line_count < loca_lineE))  --Eyes 
                then
                    red <= "1111";
                end if;
                
                if((pixel_count > noseS AND pixel_count < noseE) and (line_count > nose_LineS AND line_count < nose_LineE))  --Nose 
                then
                    red <= "1001";
                    blue  <= "1011";
                end if;
                
                 if(((pixel_count > Lips_pixelOneLS AND pixel_count < Lips_pixelOneLE) OR (pixel_count > Lips_pixelOneRS AND pixel_count < Lips_pixelOneRE)) and (line_count > mouth_LineOneU AND line_count < mouth_LineOneD))  --Mouth Pixel one
                then
                    green <= "1111";
                    blue  <= "1101";
                end if;
                
                if(((pixel_count > Lips_pixelTwoLS AND pixel_count < Lips_pixelTwoLE) OR (pixel_count > Lips_pixelTwoRS AND pixel_count < Lips_pixelTwoRE)) and (line_count > mouth_LineTwoU AND line_count < mouth_LineTwoD))  --Mouth Pixel two
                then
                    red <= "1110";
                    blue  <= "0001";
                end if;
                if((pixel_count > Lips_pixelThreeLS AND pixel_count < Lips_pixelThreeRE) and (line_count > mouth_LineThreeU AND line_count < mouth_LineThreeD))  --Mouth Pixel three
                then
                    red <= "1111";
                    green  <= "1001";
                end if;
                
                if(((pixel_count > faceSide_LS AND pixel_count < faceSide_LE) OR (pixel_count > faceSide_RS AND pixel_count < faceSide_RE)) and (line_count > face_lenghtS AND line_count < face_lenghtE))  --face sides 
                then
                    blue <= "1111";
                end if;
                
                if((pixel_count > Chin_LS AND pixel_count < Chin_LE) and (line_count > Chin_lenghtS AND line_count < Chin_lenghtE))  --face chin 
                then
                    blue <= "1111";
                end if;
                
                if((line_count > neck_lenghtS AND line_count < neck_lenghtE))  --neck side
                then
                    if (line_count > Aplha_S and line_count < Aplha_E )
                    then
                        if ((pixel_count > g_LS and pixel_count < g_RS) and line_count < 635 ) -- G
                        then
                          blue <= "1111";
                        end if;
                        
                        if ((pixel_count > g_LS and pixel_count < g_RS) and (line_count > 760 AND line_count < Aplha_E) ) -- G
                        then
                          blue <= "1111";
                        end if;
                        
                       if ((pixel_count > g_LS and pixel_count < 629) and (line_count < Aplha_E) ) -- G
                        then
                          blue <= "1111";
                        end if;
                        
                        if ((pixel_count > 659 and pixel_count < g_RS) and (line_count > 700 AND line_count < Aplha_E) ) -- G
                        then
                          blue <= "1111";
                        end if;
                        
                        if ((pixel_count > 644 and pixel_count < g_RS) and (line_count > 700 AND line_count < 705) ) -- G
                        then
                          blue <= "1111";
                        end if;
                        
                        if ((pixel_count > 679 and pixel_count < 684) and (line_count > Aplha_S AND line_count < 760) ) -- 1
                        then
                          blue <= "0011";
                        end if;
                        
                        if ((pixel_count > 674 and pixel_count < 689) and (line_count > 760 AND line_count < Aplha_E) ) -- 1
                        then
                          blue <= "0011";
                        end if;
                        
                        if ((pixel_count > 700 and pixel_count < 740) and (line_count > Aplha_S AND line_count < 635) ) -- 6
                        then
                          red <= "0011";
                        end if;
                        
                        if ((pixel_count > 700 and pixel_count < 705) and (line_count > Aplha_S AND line_count < Aplha_E) ) -- 6
                        then
                          red <= "0011";
                        end if;
                        
                         if ((pixel_count > 700 and pixel_count < 740) and ((line_count > 760 AND line_count < Aplha_E) or (line_count > 700 AND line_count < 705) )) -- 6
                        then
                          red <= "0011";
                        end if;
                        
                         if ((pixel_count > 735 and pixel_count < 740) and (line_count > 700 AND line_count < Aplha_E) ) -- 6
                        then
                          red <= "0011";
                        end if;
                        
                         if ((pixel_count > 750 and pixel_count < 810) and (line_count > Aplha_S AND line_count < 635) ) -- T
                        then
                          red <= "1100";
                        end if;
                        
                        if ((pixel_count > 778 and pixel_count < 782) and (line_count > Aplha_S AND line_count < Aplha_E) ) -- T
                        then
                          red <= "1100";
                        end if;
                        
                        if ((pixel_count > 820 and pixel_count < 860) and ((line_count > Aplha_S AND line_count < 635) or (line_count > 700 and line_count < 705) or (line_count > 760 AND line_count < Aplha_E))) -- 5
                        then
                          green <= "1111";
                          blue <= "0011";
                        end if;
                        
                        if ((pixel_count > 818 and pixel_count < 823) and (line_count > Aplha_S AND line_count < 705)) -- 5
                        then
                          green <= "1111";
                          blue <= "0011";
                        end if;
                        
                        if ((pixel_count > 865 and pixel_count < 860) and (line_count > 700 AND line_count < Aplha_E)) --5
                        then
                          green <= "1111";
                          blue <= "0011";
                        end if;
                        
                        if ((pixel_count > 870 and pixel_count < 910) and ((line_count > Aplha_S AND line_count < 635) or (line_count > 700 and line_count < 705) or (line_count > 760 AND line_count < Aplha_E))) -- 3
                        then
                          green <= "1001";
                          red <= "1011";
                        end if;
                        
                        if ((pixel_count > 905 and pixel_count < 910) and (line_count > Aplha_S AND line_count < Aplha_E)) -- 3
                        then
                          green <= "1001";
                          red <= "1011";
                        end if;   
                        
                         if ((pixel_count > 920 and pixel_count < 960) and ((line_count > Aplha_S AND line_count < 635) or (line_count > 700 and line_count < 705) or (line_count > 760 AND line_count < Aplha_E))) -- 5
                        then
                          red <= "1011";
                          green <= "0011";
                        end if;
                        
                        if ((pixel_count > 920 and pixel_count < 925) and (line_count > Aplha_S AND line_count < 705)) -- 5
                        then
                          red <= "1011";
                          green <= "0011";
                        end if;
                        
                        if ((pixel_count > 955 and pixel_count < 960) and (line_count > 700 AND line_count < Aplha_E)) -- 5
                        then
                          red <= "1011";
                          green <= "0011";
                        end if;
                        
                        if ((pixel_count > 975 and pixel_count < 980) and (line_count > Aplha_S AND line_count < Aplha_E) ) -- 1
                        then
                          green <= "0011";
                        end if;
                        
                        if ((pixel_count > 970 and pixel_count < 985) and (line_count > 760 AND line_count < Aplha_E) ) -- 1
                        then
                          green <= "0011";
                        end if;
                       
                                                
                    end if;
                    if ((pixel_count > neck_LS AND pixel_count < neck_LE) OR (pixel_count > neck_RS AND pixel_count < neck_RE))
                    then
                    blue <= "1111";
                    end if;
                end if;
                
                           
            END IF;
            
            IF(pixel_count = 1024)   -- front porch
            THEN
                
                red   <= "0000";
                green <= "0000";
                blue  <= "0000";
                b_hsync <= '0';
            END IF;
            
            IF(pixel_count = 1048)   -- horiz pulse
            THEN
                b_hsync <= '1';
            END IF;
            
            IF(pixel_count = 1184)   -- back porch
            THEN
                b_hsync <= '0';
            END IF;
            
            pixel_count := pixel_count + 1;

            IF(pixel_count = 1344)  -- line reset
            THEN
                
                pixel_count := 0;
                            
                IF(line_count = 768)    -- front porch
                THEN
                    b_vsync <= '0';
                END IF;
                
                IF(line_count = 771)    -- vert pulse
                THEN
                    b_vsync <= '1';
                END IF;
                
                IF(line_count = 777)    -- back porch
                THEN
                    b_vsync <= '0';
                END IF;
                
                line_count := line_count + 1;
                
                IF(line_count = 806)    -- reset frame
                THEN  
                                    
                    line_count := 0;
                    b_output <= not b_output;
                    counter := counter + 1;
                    hoz_count1AdderOne := hoz_count1AdderOne + 10;
                    hoz_count1AdderTwo := hoz_count1AdderOne + 10;
                    vert_count1AdderOne := vert_count1AdderOne + 10;
                    vert_count1AdderTwo := vert_count1AdderOne + 10;
                    if vert_count1AdderTwo >= 1024
                    then
                        vert_count1AdderOne := 0;
                        vert_count1AdderTwo := 10;
                    end if;
                    
                    if hoz_count1AdderTwo >= 1024
                    then
                        hoz_count1AdderOne := 0;
                        hoz_count1AdderTwo := 10;
                    end if;
                    
                    if Dig1Adder = 0
                    then
                        Dig1Adder := 1024;
                    end if;
                     Dig1Adder := Dig1Adder - 1;
                     
                      hoz_count2AdderOne := hoz_count2AdderOne + 10;
                    hoz_count2AdderTwo := hoz_count2AdderOne + 10;
                    vert_count2AdderOne := vert_count2AdderOne + 10;
                    vert_count2AdderTwo := vert_count2AdderOne + 10;
                    if vert_count1AdderTwo >= 1024
                    then
                        vert_count2AdderOne := 0;
                        vert_count2AdderTwo := 10;
                    end if;
                    
                    if hoz_count1AdderTwo >= 1024
                    then
                        hoz_count2AdderOne := 0;
                        hoz_count2AdderTwo := 10;
                    end if;
                    
                    if Dig1Adder = 0
                    then
                        Dig1Adder := 1024;
                    end if;
                     Dig1Adder := Dig1Adder - 1;
                     
                      hoz_count3AdderOne := hoz_count3AdderOne + 10;
                    hoz_count3AdderTwo := hoz_count3AdderOne + 10;
                    vert_count3AdderOne := vert_count3AdderOne + 10;
                    vert_count3AdderTwo := vert_count3AdderOne + 10;
                    if vert_count3AdderTwo >= 1024
                    then
                        vert_count3AdderOne := 0;
                        vert_count3AdderTwo := 10;
                    end if;
                    
                    if hoz_count3AdderTwo >= 1024
                    then
                        hoz_count3AdderOne := 0;
                        hoz_count3AdderTwo := 10;
                    end if;
                    
                     hoz_count4AdderOne := hoz_count4AdderOne + 10;
                    hoz_count4AdderTwo := hoz_count4AdderOne + 10;
                    vert_count4AdderOne := vert_count4AdderOne + 10;
                    vert_count4AdderTwo := vert_count4AdderOne + 10;
                    if vert_count4AdderTwo >= 1024
                    then
                        vert_count4AdderOne := 0;
                        vert_count4AdderTwo := 10;
                    end if;
                    
                    if hoz_count4AdderTwo >= 1024
                    then
                        hoz_count4AdderOne := 0;
                        hoz_count4AdderTwo := 10;
                    end if;
                    
                     hoz_count5AdderOne := hoz_count5AdderOne + 10;
                    hoz_count5AdderTwo := hoz_count5AdderOne + 10;
                    vert_count5AdderOne := vert_count5AdderOne + 10;
                    vert_count5AdderTwo := vert_count5AdderOne + 10;
                    if vert_count5AdderTwo >= 1024
                    then
                        vert_count5AdderOne := 0;
                        vert_count5AdderTwo := 10;
                    end if;
                    
                    if hoz_count5AdderTwo >= 1024
                    then
                        hoz_count5AdderOne := 0;
                        hoz_count5AdderTwo := 10;
                    end if;
                    
                     hoz_count6AdderOne := hoz_count6AdderOne + 10;
                    hoz_count6AdderTwo := hoz_count6AdderOne + 10;
                    vert_count6AdderOne := vert_count6AdderOne + 10;
                    vert_count6AdderTwo := vert_count6AdderOne + 10;
                    if vert_count6AdderTwo >= 1024
                    then
                        vert_count6AdderOne := 0;
                        vert_count6AdderTwo := 10;
                    end if;
                    
                    if hoz_count6AdderTwo >= 1024
                    then
                        hoz_count6AdderOne := 0;
                        hoz_count6AdderTwo := 10;
                    end if;
                    
                     hoz_count7AdderOne := hoz_count7AdderOne + 10;
                    hoz_count7AdderTwo := hoz_count7AdderOne + 10;
                    vert_count7AdderOne := vert_count7AdderOne + 10;
                    vert_count7AdderTwo := vert_count7AdderOne + 10;
                    if vert_count1AdderTwo >= 1024
                    then
                        vert_count7AdderOne := 0;
                        vert_count7AdderTwo := 10;
                    end if;
                    
                    if hoz_count7AdderTwo >= 1024
                    then
                        hoz_count7AdderOne := 0;
                        hoz_count7AdderTwo := 10;
                    end if;
                    
                     hoz_count8AdderOne := hoz_count8AdderOne + 10;
                    hoz_count8AdderTwo := hoz_count8AdderOne + 10;
                    vert_count8AdderOne := vert_count8AdderOne + 10;
                    vert_count8AdderTwo := vert_count8AdderOne + 10;
                    if vert_count8AdderTwo >= 1024
                    then
                        vert_count8AdderOne := 0;
                        vert_count8AdderTwo := 10;
                    end if;
                    
                    if hoz_count8AdderTwo >= 1024
                    then
                        hoz_count8AdderOne := 0;
                        hoz_count8AdderTwo := 10;
                    end if;
                    
                     hoz_count9AdderOne := hoz_count9AdderOne + 10;
                    hoz_count9AdderTwo := hoz_count9AdderOne + 10;
                    vert_count9AdderOne := vert_count9AdderOne + 10;
                    vert_count9AdderTwo := vert_count9AdderOne + 10;
                    if vert_count9AdderTwo >= 1024
                    then
                        vert_count9AdderOne := 0;
                        vert_count9AdderTwo := 10;
                    end if;
                    
                    if hoz_count9AdderTwo >= 1024
                    then
                        hoz_count9AdderOne := 0;
                        hoz_count9AdderTwo := 10;
                    end if;
                    
                     hoz_count10AdderOne := hoz_count10AdderOne + 10;
                    hoz_count10AdderTwo := hoz_count10AdderOne + 10;
                    vert_count10AdderOne := vert_count10AdderOne + 10;
                    vert_count10AdderTwo := vert_count10AdderOne + 10;
                    if vert_count10AdderTwo >= 1024
                    then
                        vert_count10AdderOne := 0;
                        vert_count10AdderTwo := 10;
                    end if;
                    
                    if hoz_count10AdderTwo >= 1024
                    then
                        hoz_count10AdderOne := 0;
                        hoz_count10AdderTwo := 10;
                    end if;
                    
                     hoz_count11AdderOne := hoz_count11AdderOne + 10;
                    hoz_count11AdderTwo := hoz_count11AdderOne + 10;
                    vert_count11AdderOne := vert_count11AdderOne + 10;
                    vert_count11AdderTwo := vert_count11AdderOne + 10;
                    if vert_count11AdderTwo >= 1024
                    then
                        vert_count11AdderOne := 0;
                        vert_count11AdderTwo := 10;
                    end if;
                    
                    if hoz_count11AdderTwo >= 1024
                    then
                        hoz_count11AdderOne := 0;
                        hoz_count11AdderTwo := 10;
                    end if;
                    
                     hoz_count12AdderOne := hoz_count12AdderOne + 10;
                    hoz_count12AdderTwo := hoz_count12AdderOne + 10;
                    vert_count12AdderOne := vert_count12AdderOne + 10;
                    vert_count12AdderTwo := vert_count12AdderOne + 10;
                    if vert_count12AdderTwo >= 1024
                    then
                        vert_count12AdderOne := 0;
                        vert_count12AdderTwo := 10;
                    end if;
                    
                    if hoz_count12AdderTwo >= 1024
                    then
                        hoz_count12AdderOne := 0;
                        hoz_count12AdderTwo := 10;
                    end if;
                    
                     hoz_count13AdderOne := hoz_count13AdderOne + 10;
                    hoz_count13AdderTwo := hoz_count13AdderOne + 10;
                    vert_count13AdderOne := vert_count13AdderOne + 10;
                    vert_count13AdderTwo := vert_count13AdderOne + 10;
                    if vert_count13AdderTwo >= 1024
                    then
                        vert_count13AdderOne := 0;
                        vert_count13AdderTwo := 10;
                    end if;
                    
                    if hoz_count13AdderTwo >= 1024
                    then
                        hoz_count13AdderOne := 0;
                        hoz_count13AdderTwo := 10;
                    end if;
                    
                     hoz_count14AdderOne := hoz_count14AdderOne + 10;
                    hoz_count14AdderTwo := hoz_count14AdderOne + 10;
                    vert_count14AdderOne := vert_count14AdderOne + 10;
                    vert_count14AdderTwo := vert_count14AdderOne + 10;
                    if vert_count14AdderTwo >= 1024
                    then
                        vert_count14AdderOne := 0;
                        vert_count14AdderTwo := 10;
                    end if;
                    
                    if hoz_count14AdderTwo >= 1024
                    then
                        hoz_count14AdderOne := 0;
                        hoz_count14AdderTwo := 10;
                    end if;
                    
                    hoz_count15AdderOne := hoz_count15AdderOne + 10;
                    hoz_count15AdderTwo := hoz_count15AdderOne + 10;
                    vert_count15AdderOne := vert_count15AdderOne + 10;
                    vert_count15AdderTwo := vert_count15AdderOne + 10;
                    if vert_count15AdderTwo >= 1024
                    then
                        vert_count15AdderOne := 0;
                        vert_count15AdderTwo := 10;
                    end if;
                    
                    if hoz_count15AdderTwo >= 1024
                    then
                        hoz_count15AdderOne := 0;
                        hoz_count15AdderTwo := 10;
                    end if;
                    
                     hoz_count16AdderOne := hoz_count16AdderOne + 10;
                    hoz_count16AdderTwo := hoz_count16AdderOne + 10;
                    vert_count16AdderOne := vert_count16AdderOne + 10;
                    vert_count16AdderTwo := vert_count16AdderOne + 10;
                    if vert_count16AdderTwo >= 1024
                    then
                        vert_count16AdderOne := 0;
                        vert_count16AdderTwo := 10;
                    end if;
                    
                    if hoz_count16AdderTwo >= 1024
                    then
                        hoz_count16AdderOne := 0;
                        hoz_count16AdderTwo := 10;
                    end if;
                    
                     hoz_count17AdderOne := hoz_count17AdderOne + 10;
                    hoz_count17AdderTwo := hoz_count17AdderOne + 10;
                    vert_count17AdderOne := vert_count17AdderOne + 10;
                    vert_count17AdderTwo := vert_count17AdderOne + 10;
                    if vert_count17AdderTwo >= 1024
                    then
                        vert_count17AdderOne := 0;
                        vert_count17AdderTwo := 10;
                    end if;
                    
                    if hoz_count17AdderTwo >= 1024
                    then
                        hoz_count17AdderOne := 0;
                        hoz_count17AdderTwo := 10;
                    end if;
                    
                     hoz_count18AdderOne := hoz_count18AdderOne + 10;
                    hoz_count18AdderTwo := hoz_count18AdderOne + 10;
                    vert_count18AdderOne := vert_count18AdderOne + 10;
                    vert_count18AdderTwo := vert_count18AdderOne + 10;
                    if vert_count18AdderTwo >= 1024
                    then
                        vert_count18AdderOne := 0;
                        vert_count18AdderTwo := 10;
                    end if;
                    
                    if hoz_count18AdderTwo >= 1024
                    then
                        hoz_count18AdderOne := 0;
                        hoz_count18AdderTwo := 10;
                    end if;
                    
                     hoz_count19AdderOne := hoz_count19AdderOne + 10;
                    hoz_count19AdderTwo := hoz_count19AdderOne + 10;
                    vert_count19AdderOne := vert_count19AdderOne + 10;
                    vert_count19AdderTwo := vert_count19AdderOne + 10;
                    if vert_count19AdderTwo >= 1024
                    then
                        vert_count19AdderOne := 0;
                        vert_count19AdderTwo := 10;
                    end if;
                    
                    if hoz_count19AdderTwo >= 1024
                    then
                        hoz_count19AdderOne := 0;
                        hoz_count19AdderTwo := 10;
                    end if;
                    
                     hoz_count20AdderOne := hoz_count20AdderOne + 10;
                    hoz_count20AdderTwo := hoz_count20AdderOne + 10;
                    vert_count20AdderOne := vert_count20AdderOne + 10;
                    vert_count20AdderTwo := vert_count20AdderOne + 10;
                    if vert_count20AdderTwo >= 1024
                    then
                        vert_count20AdderOne := 0;
                        vert_count20AdderTwo := 10;
                    end if;
                    
                    if hoz_count20AdderTwo >= 1024
                    then
                        hoz_count20AdderOne := 0;
                        hoz_count20AdderTwo := 10;
                    end if;
                    
                    
                      
                    writeFrame := writeFrame + 1;
                    writeFrame_Two := writeFrame_Two + 1;        
                END IF;
            END IF;
            
        END IF;
       
    END PROCESS;
    
   output <= b_output;
    
    vsync <= b_vsync;
    hsync <= b_hsync;
    
    r <= red;
    g <= green;
    b <= blue;
    
END behavior;

