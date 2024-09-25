LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY TB IS 
END TB; 
ARCHITECTURE behavior OF TB IS 
   COMPONENT subtractor 
   PORT( 
        Bi : IN  std_logic; 
        X : IN  std_logic; 
        Y : IN  std_logic; 
        D : OUT  std_logic; 
        Bo : OUT  std_logic 
       ); 
   END COMPONENT; 
   --Inputs 
   signal Bi : std_logic := '0'; 
   signal X : std_logic := '0'; 
   signal Y : std_logic := '0'; 
   --Outputs 
   signal D : std_logic; 
   signal Bo : std_logic; 
BEGIN 
   -- Instantiate the Unit Under Test (UUT) 
   uut: subtractor PORT MAP ( 
          Bi => Bi, 
          X => X, 
          Y => Y, 
          D => D, 
          Bo => Bo  
        ); 
   -- Stimulus 
   X <= not X after 50 ns; 
   Y <= not Y after 100 ns; 
   Bi <= not Bi after 200 ns; 
