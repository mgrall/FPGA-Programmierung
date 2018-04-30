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

entity fullAdder is
  port(A, B, CIN: in  std_logic;
       SUM, FCOUT: out std_logic);
end fullAdder;

architecture STRUCT of fullAdder is
component halfAdder
  port(A,   B:     in  std_logic;
       sum, Cout: out std_logic);
end component;
signal U0_CARRY, U0_SUM, U1_CARRY: std_logic;

begin
  U0: halfAdder port map (A => A,      B => B,   sum => U0_SUM, Cout => U0_CARRY);
  U1: halfAdder port map (A => U0_SUM, B => CIN, sum => SUM,    Cout => U1_CARRY);

  FCOUT <= U0_CARRY or U1_CARRY;
end STRUCT;
