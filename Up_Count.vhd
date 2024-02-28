library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Up_count is
port(
          CLK, RST : in std_logic;
          Count    : out std_logic_vector(3 downto 0)
);
end Up_count;

architecture ARC of Up_count is

signal cnt : std_logic_vector (3 downto 0):="0000";

begin

    stim : process (CLK, RST)
    begin 
    
    if(rising_edge(CLK)) then
        if(RST ='1') then
            cnt <= x"0";
        else 
            cnt <= cnt + x"1";
        end if;
        
    end if;
     
    end process;
    
    Count <= cnt;
    
end ARC;