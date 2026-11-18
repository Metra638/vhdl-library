library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_4bit is
    Port ( 
        Di     : in  STD_LOGIC_VECTOR (3 downto 0);
        Bo     : in  STD_LOGIC;
        A_eq_B : out STD_LOGIC;
        A_gt_B : out STD_LOGIC;
        A_lt_B : out STD_LOGIC
    );
end comparator_4bit;

architecture Behavioral of comparator_4bit is
begin
    A_eq_B <= '1' when Di = "0000" else '0';
    A_lt_B <= Bo;
    A_gt_B <= '1' when (Bo = '0' and Di /= "0000") else '0';
end Behavioral;
