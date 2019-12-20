--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:04:42 02/07/2014
-- Design Name:   
-- Module Name:   C:/Users/User/Documents/XlinxISE works/Adder2/full_adder_2bits_tb.vhd
-- Project Name:  Adder2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder_2bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY full_adder_2bits_tb IS
END full_adder_2bits_tb;
 
ARCHITECTURE behavior OF full_adder_2bits_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_2bits
    PORT(
         A0 : IN  std_logic;
         B0 : IN  std_logic;
         A1 : IN  std_logic;
         B1 : IN  std_logic;
			carry_in2 : out  STD_LOGIC;
         sum0 : OUT  std_logic;
         sum1 : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal B0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal B1 : std_logic := '0';

 	--Outputs
	signal carry_in2: std_logic;
   signal sum0 : std_logic;
   signal sum1 : std_logic;
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_2bits PORT MAP (
          A0 => A0,
          B0 => B0,
          A1 => A1,
          B1 => B1,
			 carry_in2 => carry_in2,
          sum0 => sum0,
          sum1 => sum1,
          carry => carry
        );
 

   -- Stimulus process
   stim_proc: process
   begin	
      -- insert stimulus here 
			   A0<='0';
				B0<='0';
				A1<='0';
				B1<='0';
   wait for 20 ns;	

      --wait for <clock>_period*10;
	assert (sum0 ='0') and(sum1 ='0') and (carry ='0') report "test failed for 00" severity error;
      -- insert stimulus here 
				A0<='0';
				B0<='1';
				A1<='0';
				B1<='0';
	 wait for 20 ns;
				A0<='1';
				B0<='0';
				A1<='0';
				B1<='0';
    wait for 20 ns;
				A0<='1';
				B0<='1';
				A1<='0';
				B1<='0';
      --wait 20 ns;
	wait for 20 ns;
				A0<='1';
				B0<='1';
				A1<='1';
				B1<='0';
	wait for 20 ns;
				A0<='1';
				B0<='0';
				A1<='1';
				B1<='0';
				
	wait for 20 ns;
				A0<='1';
				B0<='1';
				A1<='1';
				B1<='1';

      wait;
   end process;

END;
