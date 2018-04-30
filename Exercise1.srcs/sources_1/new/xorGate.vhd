----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2018 11:48:27
-- Design Name: 
-- Module Name: orGate - Behavioral
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

entity xorGate is
--  Port ( );
port (A : in std_logic;
	   B : in std_logic;
	       F : out std_logic);
end xorGate;

architecture Behavioral of xorGate is


begin
    F <= A xor B;
    --O <= '0' when (I1 = '0' and I2 = '0') or (I1 = '1' and I2 = '1') else '1';


end Behavioral;
