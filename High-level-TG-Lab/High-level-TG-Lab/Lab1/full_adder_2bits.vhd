----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:45:35 02/07/2014 
-- Design Name: 
-- Module Name:    full_adder_2bits - full_adder_2bits_arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_2bits is
    Port ( A0 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           --carry_in : inout  STD_LOGIC;
			  carry_in2 : out  STD_LOGIC;
           sum0 : out  STD_LOGIC;
           sum1 : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end full_adder_2bits;

architecture full_adder_2bits_arch of full_adder_2bits is
	component  half_adder is
      port (
        A0:  in  std_logic;
        B0:  in  std_logic;
        sum0:  out std_logic;
        carry: out std_logic
       );
   end component  half_adder ;

	component full_adder_1bit is
     port (
        A1:  in  std_logic;
        B1:  in  std_logic;
        carry_in: in  std_logic;
        sum1:  out std_logic;
        carry: out std_logic
       );
  end component  full_adder_1bit ;
  signal cin: std_logic;
begin
	ha1: half_adder  port map (A0, B0, sum0, cin);
	ha2: full_adder_1bit port map (A1, A1, cin, sum1, carry );
	
	carry_in2 <= cin;
end full_adder_2bits_arch;


