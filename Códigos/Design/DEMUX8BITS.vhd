library ieee;
use ieee.std_logic_1164.all;

entity demult8x1 is
port(e:in std_logic_vector(7 downto 0);
     sel:in std_logic_vector(2 downto 0);
     s1, s2, s3, s4, s5, s6, s7, s8: out std_logic_vector(7 downto 0));
end demult8x1;
architecture arch_demult8x1 of demult8x1 is
begin
  s1 <= e when sel="000" else"00000000";
  s2 <= e when sel="001" else"00000000";
  s3 <= e when sel="010" else"00000000";
  s4 <= e when sel="011" else"00000000";
  s5 <= e when sel="100" else"00000000";
  s6 <= e when sel="101" else"00000000";
  s7 <= e when sel="110" else"00000000";
  s8 <= e when sel="111" else"00000000";
end arch_demult8x1;