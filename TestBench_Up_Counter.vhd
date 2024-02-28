library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Test is
end Test;

architecture ARC of Test is
component Up_Count 
port(
          CLK, RST : in std_logic;
          Count    : out std_logic_vector(3 downto 0)
);
end component;

signal clk, rst : std_logic ;
signal Count    : std_logic_vector(3 downto 0):="0000" ;

begin 
    dev_test : Up_Count 
    port map 
    (
        CLK   => clk, 
        RST   => rst, 
        Count => Count
    );
    
    stim1 : process
    begin
    clk <= '0';
    wait for 10ns;
    clk <= '1';
    wait for 10ns;
    end process;
    
    stim2 : process
    begin
    rst <= '1';
    wait for 20ns;
    rst <= '0';
    wait for 290ns;
    rst <= '1';
    wait for 20ns;
    rst <= '0';
    end process;
end ARC;