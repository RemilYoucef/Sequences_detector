----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:45 12/13/2018 
-- Design Name: 
-- Module Name:    debounce - Behavioral 
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

entity debounce is
    Port ( D_IN : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           Q_OUT : out  STD_LOGIC);
end debounce;

architecture Behavioral of debounce is


--  Provides a one-shot pulse from a non-clock input, with reset
--**Insert the following between the 'architecture' and
---'begin' keywords**
signal Q1, Q2, Q3 : std_logic;
begin
--**Insert the following after the 'begin' keyword**
process(clock)
	begin
		if (clock'event and clock = '1') then
				Q1 <= D_IN;
				Q2 <= Q1;
				Q3 <= Q2;
		end if;
end process;
Q_OUT <= Q1 and Q2 and (not Q3);

end Behavioral;

