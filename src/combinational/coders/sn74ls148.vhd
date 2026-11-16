library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sn74ls148_gates is
    Port ( 
        EI : in  STD_LOGIC;
        D  : in  STD_LOGIC_VECTOR (7 downto 0);
        A  : out STD_LOGIC_VECTOR (2 downto 0);
        GS : out STD_LOGIC;
        EO : out STD_LOGIC
    );
end sn74ls148_gates;

architecture Behavioral of sn74ls148_gates is
    signal I : std_logic_vector(7 downto 0);
    signal A2_int, A1_int, A0_int : std_logic;
    signal any_input : std_logic;
begin
    I <= not D;

    any_input <= '1' when I /= "00000000" else '0';

    A2_int <= I(4) or I(5) or I(6) or I(7);
    A1_int <= I(2) or I(3) or I(6) or I(7);
    A0_int <= I(1) or I(3) or I(5) or I(7);

    A(2) <= '1' when EI = '1' else not A2_int;
    A(1) <= '1' when EI = '1' else not A1_int;
    A(0) <= '1' when EI = '1' else not A0_int;

    GS <= '1' when (EI = '1' or any_input = '0') else '0';

    EO <= '1' when (EI = '1' or any_input = '1') else '0';

end Behavioral;
