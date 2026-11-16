library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor is
    Port ( 
        A  : in  STD_LOGIC;
        B  : in  STD_LOGIC;
        Di : out STD_LOGIC;
        Bo : out STD_LOGIC
    );
end half_subtractor;

architecture Behavioral of half_subtractor is
begin
    Di <= A xor B;
    Bo <= (not A) and B;
end Behavioral;
