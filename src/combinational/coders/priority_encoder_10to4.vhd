library ieee;
use ieee.std_logic_1164.all;

entity priority_encoder_10to4 is
    port (
        EI : in std_logic;
        D0 : in std_logic;
        D1 : in std_logic;
        D2 : in std_logic;
        D3 : in std_logic;
        D4 : in std_logic;
        D5 : in std_logic;
        D6 : in std_logic;
        D7 : in std_logic;
        D8 : in std_logic;
        D9 : in std_logic;
        A : out std_logic;
        B : out std_logic;
        C : out std_logic;
        D : out std_logic;
        EO : out std_logic;
        GS : out std_logic
    );
end entity priority_encoder_10to4;

architecture rtl of priority_encoder_10to4 is
begin
    process (EI, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9)
    begin
        A <= '0';
        B <= '0';
        C <= '0';
        D <= '0';
        EO <= '1';
        GS <= '1';

        if EI = '0' then
            if D0 = '1' or D1 = '1' or D2 = '1' or D3 = '1' or D4 = '1' or D5 = '1' or D6 = '1' or D7 = '1' or D8 = '1' or D9 = '1' then
                EO <= '1';
                GS <= '0';
            else
                EO <= '0';
                GS <= '1';
            end if;

            if D9 = '1' then
                A <= '1';
                D <= '1';
            elsif D8 = '1' then
                A <= '1';
            elsif D7 = '1' then
                B <= '1';
                C <= '1';
                D <= '1';
            elsif D6 = '1' then
                B <= '1';
                C <= '1';
            elsif D5 = '1' then
                B <= '1';
                D <= '1';
            elsif D4 = '1' then
                B <= '1';
            elsif D3 = '1' then
                C <= '1';
                D <= '1';
            elsif D2 = '1' then
                C <= '1';
            elsif D1 = '1' then
                D <= '1';
            end if;
        end if;
    end process;
end architecture rtl;
