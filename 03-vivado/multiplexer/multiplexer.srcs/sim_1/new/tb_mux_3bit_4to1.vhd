------------------------------------------------------------
--
-- Testbench for 2-bit binary comparator.
-- EDA Playground
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_mux_3bit_4to_1 is
    -- Entity of testbench is always empty
end entity tb_mux_3bit_4to_1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_mux_3bit_4to_1 is

    -- Local signals
    signal s_a           : std_logic_vector(3 - 1 downto 0);
    signal s_b           : std_logic_vector(3 - 1 downto 0);
    signal s_c           : std_logic_vector(3 - 1 downto 0);
    signal s_d           : std_logic_vector(3 - 1 downto 0);
    signal s_f : std_logic_vector(3 - 1 downto 0);
    signal s_sel  : std_logic_vector(2 - 1 downto 0);
begin
    -- Connecting testbench signals with comparator_4bit
    -- entity (Unit Under Test)
    uut_mux_3bit_4to_1 : entity work.mux_3bit_4to_1
        port map(
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            f_o           => s_f,
            sel_i         => s_sel
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "100"; 
        s_a <= "000"; 
        s_c <= "110"; 
        s_d <= "101";  
        s_sel <=  "00";     
        wait for 100 ns;
        -- Expected output
        
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;


        
        
       

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end architecture testbench;
