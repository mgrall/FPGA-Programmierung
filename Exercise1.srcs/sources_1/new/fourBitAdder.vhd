----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2018 17:10:26
-- Design Name: 
-- Module Name: fullAdder - Behavioral
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

-- full_adder.vhdl
-- desc: 1bit full adder

entity fourBitAdder is
  port ( A : in STD_LOGIC_VECTOR (3 downto 0);
    B : in STD_LOGIC_VECTOR (3 downto 0);
    tCIN : in STD_LOGIC;
    tSUM : out STD_LOGIC_VECTOR (3 downto 0);
    tCOUT : out STD_LOGIC);
end fourBitAdder;

architecture Behavioral of fourBitAdder is
component fullAdder
  port(A,   B,  CIN:     in  std_logic;
       SUM, FCOUT: out std_logic);
end component;
signal c1,c2,c3: STD_LOGIC;

begin
  U0: fullAdder port map (A(0),      B(0), tCIN,   tSUM(0), c1);
  U1: fullAdder port map (A(1), B(1), c1,    tSUM(1), c2);
  U2: fullAdder port map (A(2), B(2), c2,    tSUM(2), c3);
  U3: fullAdder port map (A(3), B(3), c3,    tSUM(3), tCOUT);

end Behavioral;
