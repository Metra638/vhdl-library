library ieee;
use ieee.std_logic_1164.all;

entity priority_resolver_10 is
    port (
        D : in std_logic_vector(9 downto 0);
        P : out std_logic_vector(9 downto 0)
    );
end entity priority_resolver_10;

architecture rtl of priority_resolver_10 is
begin
    process (D)
        variable result : std_logic_vector(9 downto 0);
    begin
        result := (others => '0');

        if D(9) = '1' then
            result(9) := '1';
        elsif D(8) = '1' then
            result(8) := '1';
        elsif D(7) = '1' then
            result(7) := '1';
        elsif D(6) = '1' then
            result(6) := '1';
        elsif D(5) = '1' then
            result(5) := '1';
        elsif D(4) = '1' then
            result(4) := '1';
        elsif D(3) = '1' then
            result(3) := '1';
        elsif D(2) = '1' then
            result(2) := '1';
        elsif D(1) = '1' then
            result(1) := '1';
        elsif D(0) = '1' then
            result(0) := '1';
        end if;

        P <= result;
    end process;
end architecture rtl;
