LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
--use ieee.math_real.all;


ENTITY clock_and IS
	PORT (
		d1, d2, clock : IN STD_LOGIC;
		output        : OUT STD_LOGIC;
		
		r             : OUT STD_LOGIC_VECTOR (3 downto 0);
		g             : OUT STD_LOGIC_VECTOR (3 downto 0);
		b             : OUT STD_LOGIC_VECTOR (3 downto 0);
		
		vsync         : OUT STD_LOGIC;
		hsync         : OUT STD_LOGIC
		 );
END clock_and;



ARCHITECTURE behavior OF clock_and IS

COMPONENT clk_wiz_1
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

BEGIN

    pixel_clock : clk_wiz_1 port map(p_clock, clock);   -- 100Mhz in -> 40Mhz out: used for pixel clock

    PROCESS (p_clock)
    VARIABLE pixel_count : INTEGER RANGE 0 TO 1344 := 0;
    VARIABLE line_count  : INTEGER RANGE 0 TO 806  := 0;
    
    VARIABLE counter     : INTEGER RANGE 0 TO 1024  := 0;
    
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
                
                if(((pixel_count > neck_LS AND pixel_count < neck_LE) OR (pixel_count > neck_RS AND pixel_count < neck_RE)) and (line_count > neck_lenghtS AND line_count < neck_lenghtE))  --neck side
                then
                    blue <= "1111";
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

