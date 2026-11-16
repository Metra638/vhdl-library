library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_8to3 is
    Port ( 
        D : in  STD_LOGIC_VECTOR (7 downto 0);
        A : out STD_LOGIC;
        B : out STD_LOGIC;
        C : out STD_LOGIC
    );
end priority_encoder_8to3;

architecture Behavioral of priority_encoder_8to3 is
begin
    process(D)
    begin
        if D(7) = '1' then
            A <= '1'; B <= '1'; C <= '1';
        elsif D(6) = '1' then
            A <= '1'; B <= '1'; C <= '0';
        elsif D(5) = '1' then
            A <= '1'; B <= '0'; C <= '1';
        elsif D(4) = '1' then
            A <= '1'; B <= '0'; C <= '0';
        elsif D(3) = '1' then
            A <= '0'; B <= '1'; C <= '1';
        elsif D(2) = '1' then
            A <= '0'; B <= '1'; C <= '0';
        elsif D(1) = '1' then
            A <= '0'; B <= '0'; C <= '1';
        else
            A <= '0'; B <= '0'; C <= '0';
        end if;
    end process;
end Behavioral;
