library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity subtractor_4bit is
    Port ( 
        A   : in  STD_LOGIC_VECTOR (3 downto 0);
        B   : in  STD_LOGIC_VECTOR (3 downto 0);
        Bin : in  STD_LOGIC;
        Di  : out STD_LOGIC_VECTOR (3 downto 0);
        Bo  : out STD_LOGIC
    );
end subtractor_4bit;

architecture Behavioral of subtractor_4bit is
    signal diff_temp : STD_LOGIC_VECTOR (4 downto 0);
begin
    diff_temp <= ('0' & A) - ('0' & B) - ("0000" & Bin);
    
    Di <= diff_temp(3 downto 0);
    Bo <= diff_temp(4);
end Behavioral;
