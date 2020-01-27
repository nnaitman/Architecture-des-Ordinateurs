Library IEEE ;
USE ieee.std_logic_1164.all;
--MUX 2_vers_1 test.

entity MUX2v1_test is 

	PORT ( --declare ports IN & OUT
		SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); 
		  
end MUX2v1_test;

architecture MUX2v1_test_arc of MUX2v1_test is
	--MUX2v1 component
	component MUX2v1 
		Port ( s, x, y : in STD_LOGIC;
		       m : out STD_LOGIC);
	end component;
	begin
 	--The behavior of MUX2v1_test
		inst_MUX2v1 : MUX2v1 port map (
			x => SW(0),
			y => SW(1),
			s => SW(2),
			m => LEDR(0));
	
end MUX2v1_test_arc;            
				 
