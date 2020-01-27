Library IEEE ;
USE ieee.std_logic_1164.all;
--MUX 5_vers_1

entity MUX5v1 is 
    Port ( U, V, W, X, Y: in STD_LOGIC_VECTOR (2 downto 0);
           s0, s1, s3 : in STD_LOGIC;
	 	   M: out STD_LOGIC_VECTOR (2 downto 0));		  
end MUX5v1;


architecture behavior of MUX5v1_3bits is

    component MUX5v1 is 
        Port ( u, v, w, x, y : in STD_LOGIC;
               s0, s1, s3 : in STD_LOGIC;
               m : out STD_LOGIC));
    end component; 

    begin
        gen: FOR i IN 0 to 2 GENERATE 
            inst_MUX5v1 : MUX5v1 port map (U=>U(i),V=>V(i),W=>W(i),X=>X(i),Y=>Y(i));
            end
    
    
    
end architecture behavior;