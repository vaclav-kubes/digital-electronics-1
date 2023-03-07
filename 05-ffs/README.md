# Lab 5: Václav Kubeš

### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![d ff and T ff wave](d_t_ffs.png)

### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of jk_ff_rst is
    begin
    
    p_jk_ff : process (clk)
    begin
    
    if rising_edge(clk) then
    	if (j = '0' and k = '0') then
        	s_q <= s_q;
      elsif (k = '1') then
        	s_q <= '0';
      elsif (j = '1') then
        	s_q <= '1';
      else (j ='1' and k ='1') then
            s_q <= not s_q;
      end if;
    end if;
   end process p_jk_ff;

q <= s_q;
q_bar <= not s_q;
   
end architecture Behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![4-bit shift register](shift_reg.jpg)
