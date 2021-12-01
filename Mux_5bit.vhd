----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 04:58:06 AM
-- Design Name: 
-- Module Name: Mux_5bit - Behavioral
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

entity Mux_5bit is
    port(   Din0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
            Din1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
            Selector : in STD_LOGIC;
            Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
    );
end Mux_5bit;

architecture Behavioral of Mux_5bit is
begin
    with Selector select
        Dout <= Din0 when '0',
                Din1 when others;
end Behavioral;
