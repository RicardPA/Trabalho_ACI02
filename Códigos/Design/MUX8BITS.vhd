library ieee;
use ieee.std_logic_1164.all;
entity mult8x1 is
port (e1, e2, e3, e4, e5, e6, e7, e8: in std_logic_vector (7 downto 0);
      sel: in std_logic_vector (2 downto 0);
      s: out std_logic_vector (7 downto 0));
end mult8x1;
architecture arch_mult8x1 of mult8x1 is
begin
with sel select
s <= e1 when "000",
     e2 when "001",
     e3 when "010",
     e4 when "011",
     e5 when "100",
     e6 when "101",
     e7 when "110",
	 e8 when others;
end arch_mult8x1;