Library IEEE ;
USE ieee.std_logic_1164.all;
--MUX 2_vers_1

entity MUX2v1 is 

	Port ( s : in STD_LOGIC;
			 x : in STD_LOGIC_VECTOR (1 downto 0);
			 y : in STD_LOGIC_VECTOR (1 downto 0);
			 m : out STD_LOGIC_VECTOR (1 downto 0)
		  );
		  
end MUX2v1;

architecture MUX2v1_test of MUX2v1 is
begin 
	m <= x when (s = '1') else y;
end MUX2v1_test;
		  
	  