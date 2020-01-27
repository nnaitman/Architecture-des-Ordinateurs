Library IEEE ;
USE ieee.std_logic_1164.all;
--MUX 2_vers_1

entity MUX2v1 is 
	Port ( s, x, y : in STD_LOGIC;
	 	m : out STD_LOGIC);		  
end MUX2v1;

architecture behavior of MUX2v1 is
begin
	m <= (NOT (s) AND x) OR (s AND y);

end behavior;            
							 
