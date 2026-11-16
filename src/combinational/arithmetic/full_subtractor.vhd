library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_subtractor is
    Port ( 
        A   : in  STD_LOGIC;
        B   : in  STD_LOGIC;
        Bin : in  STD_LOGIC;
        Di  : out STD_LOGIC;
        Bo  : out STD_LOGIC
    );
end full_subtractor;

architecture Behavioral of full_subtractor is
begin
    Di <= A xor B xor Bin;
    Bo <= ((not A) and B) or ((not (A xor B)) and Bin);
end Behavioral;
