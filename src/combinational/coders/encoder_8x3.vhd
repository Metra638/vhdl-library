library ieee;
use ieee.std_logic_1164.all;

entity encoder_8x3 is
    port (
        -- Active-low enable: EI = 0 enables the encoder, EI = 1 disables it.
        EI : in std_logic;

        D0 : in std_logic;
        D1 : in std_logic;
        D2 : in std_logic;
        D3 : in std_logic;
        D4 : in std_logic;
        D5 : in std_logic;
        D6 : in std_logic;
        D7 : in std_logic;

        A : out std_logic;
        B : out std_logic;
        C : out std_logic;

        -- Enable Output: EO = 0 allows the next encoder to operate when no inputs are active.
        EO : out std_logic;

        -- Group Select: GS = 0 indicates that at least one input is active and this encoder is selected.
        GS : out std_logic
    );
end entity encoder_8x3;

architecture rtl of encoder_8x3 is
    signal any_input : std_logic;
begin

    any_input <= D0 or D1 or D2 or D3 or D4 or D5 or D6 or D7;

    A <= (D4 or D5 or D6 or D7) when EI = '0' else '0';
    B <= (D2 or D3 or D6 or D7) when EI = '0' else '0';
    C <= (D1 or D3 or D5 or D7) when EI = '0' else '0';

    EO <= '0' when EI = '0' and any_input = '0' else '1';
    GS <= '0' when EI = '0' and any_input = '1' else '1';

end architecture rtl;
