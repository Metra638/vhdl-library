library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder_4bit is
    Port ( 
        A    : in  STD_LOGIC_VECTOR (3 downto 0);
        B    : in  STD_LOGIC_VECTOR (3 downto 0);
        Cin  : in  STD_LOGIC;
        S    : out STD_LOGIC_VECTOR (3 downto 0);
        Cout : out STD_LOGIC
    );
end adder_4bit;

architecture Behavioral of adder_4bit is
    signal sum_temp : STD_LOGIC_VECTOR (4 downto 0);
begin
    sum_temp <= ('0' & A) + ('0' & B) + ("0000" & Cin);
    
    S    <= sum_temp(3 downto 0);
    Cout <= sum_temp(4);
end Behavioral;
