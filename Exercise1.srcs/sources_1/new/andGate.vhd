----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2018 11:23:20
-- Design Name: 
-- Module Name: andGate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity andGate is

--  Port ( );

	port (A : in std_logic;
	   B : in std_logic;
	       F : out std_logic);
	

end andGate;

architecture Behavioral of andGate is

begin
    F <= A and B;
    --O <= '1' when I1 = '1' and I2 = '1' else '0';

end Behavioral;
