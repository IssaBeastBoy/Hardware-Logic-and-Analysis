LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Task2_compo is
    PORT (
        A: IN STD_LOGIC_VECTOR (7 downto 0);
        B: IN STD_LOGIC_VECTOR (7 downto 0);
        diff : OUT STD_LOGIC_VECTOR (7 downto 0);
        B_carry: OUT STD_LOGIC
     );
end Task2_compo;

architecture Behavioral of Task2_compo is
SIGNAL B_in: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
COMPONENT Task_2 IS
    PORT(
        Fsub_A: IN STD_LOGIC;
        Fsub_B: IN STD_LOGIC;
        Fsub_Bin : IN STD_LOGIC;
        Fsub_diff : OUT STD_LOGIC;
        Fsub_Bout : OUT STD_LOGIC
    );
END COMPONENT;
begin
  bit0 : Task_2 PORT MAP(A(0), B(0), '0', diff(0), B_in(0));
  bit1 : Task_2 PORT MAP(A(1), B(1), B_in(0), diff(1), B_in(1));
  bit2 : Task_2 PORT MAP(A(2), B(2), B_in(1), diff(2), B_in(2));
  bit3 : Task_2 PORT MAP(A(3), B(3), B_in(2), diff(3), B_in(3));
  bit4 : Task_2 PORT MAP(A(4), B(4), B_in(3), diff(4), B_in(4));
  bit5 : Task_2 PORT MAP(A(5), B(5), B_in(4), diff(5), B_in(5));
  bit6 : Task_2 PORT MAP(A(6), B(6), B_in(5), diff(6), B_in(6));
  bit7 : Task_2 PORT MAP(A(7), B(7), B_in(6), diff(7), B_carry);
END Behavioral;