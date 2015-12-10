library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity  DECODER is
  port (
    INS : in std_logic_vector(16 downto 0);
    opcode : out std_logic_vector(7 downto 0);
    addr_in_1 : out std_logic_vector (1 downto 0);
    addr-in_2 : out std_logic_vector (1 downto 0);
    addr_out :out std_logic_vector (1 downto 0);
    immediate_operand : out std_logic_vector (13 downto 6));
    
end entity DECODER;

architecture work of DECODER is
  begin 
    process () is
      begin 
        opcode <= INS (16 downto 14);
        immediate operand (13 downto 6);
        addr_in_1 <= INS (5 downto 4);
        addr_in_2 <= INS (3 downto 2);
        addr_out <= INS (1 downto 0);
        
    end process;
  end architecture work;
