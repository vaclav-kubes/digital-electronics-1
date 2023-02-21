------------------------------------------------------------
--
-- Example of 2-bit binary comparator using the when/else
-- assignments.
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
-- Entity declaration for 2-bit binary comparator
------------------------------------------------------------
entity mux_3bit_4to_1 is
    port(
        a_i           : in  std_logic_vector(2 downto 0);
        b_i           : in  std_logic_vector(2 downto 0);
        c_i           : in  std_logic_vector(2 downto 0);
        d_i           : in  std_logic_vector(2 downto 0);
        sel_i    : in  std_logic_vector(1 downto 0);
        f_o           : out  std_logic_vector(2 downto 0)

    );
end entity mux_3bit_4to_1;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of mux_3bit_4to_1 is
begin
       f_o <= a_i when (sel_i = "000" ) else
            b_i when (sel_i = "001" ) else
            c_i when (sel_i = "010" ) else
            d_i;                 -- All other combinations
end architecture Behavioral;
