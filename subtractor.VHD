library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity subtractor is 
    Port ( Bi : in  STD_LOGIC; 
           X : in  STD_LOGIC; 
           Y : in  STD_LOGIC; 
           D : out  STD_LOGIC; 
           Bo : out  STD_LOGIC; 
end subtractor; 
architecture Dataflow of subtractor is 
   signal intern1 : STD_LOGIC; 
   signal intern2 : STD_LOGIC; 
   signal intern3 : STD_LOGIC; 
begin 
   intern1 <= X xor Y; 
   intern2 <= not X and Y; 
   intern3 <= Bi and not intern1; 
   D <= Bi xor intern1; 
   Bo <= intern2 or intern3; 
end Dataflow;
