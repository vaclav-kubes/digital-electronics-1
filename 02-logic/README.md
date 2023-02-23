# Lab 2: VÁCLAV KUBEŠ

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](marked-k-map-b_great_a.jpg)

   Less than:

   ![K-maps](marked-k-map-b_less_a(2).jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

```math
\begin{aligned}
y_{B > A}^{SoP}=b_{1}\overline{a_{1}}+\overline{a_{1}} \overline{a_{0}}b_{0}+b_{0}b_{1}\overline{a_{0}}\\\
y_{B < A}^{PoS}=(a_{1}+a_{0})(\overline{b_{1}}+\overline{b_{0}})(\overline{b_{1}}+a_{1})(\overline{b_{0}}+a_{1})(\overline{b_{1}}+a_{0})\\\
\end{aligned}
```

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx44**

```vhdl
        p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0100"; --  ID = ****44
        s_a <= "0100";        
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination A = 0100, B = 0100" severity error;

		s_b <= "0000"; s_a <= "0001"; wait for 100 ns;
        
        assert ((s_B_greater_A = '0') and (s_B_less_A = '1') and (s_B_equals_A = '0')) 
        report "Input combination 0000, 0001 FAILED" severity error;
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/x/Z6sA](https://www.edaplayground.com/x/Z6sA)
