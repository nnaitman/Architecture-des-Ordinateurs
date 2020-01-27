Library IEEE ;
USE ieee.std_logic_1164.all;
--MUX 5_vers_1

entity MUX5v1 is 
    Port ( u, v, w, x, y : in STD_LOGIC;
           s0, s1, s3 : in STD_LOGIC;
	 	   m : out STD_LOGIC));		  
end MUX5v1;

architecture behavior of MUX5v1_3bits is

    Signal sig0, sig1, sig2;
    --a MUX5v1_3bits needs an instanciation of 4 MUX2v1_1bit
    component MUX2v1_1bit is 
		port(s, x, y : in STD_LOGIC;
            m : out STD_LOGIC));
    end component;
    
        Begin 
        --The instanciation of 4 MUX2v1_1bit
		inst1_MUX2v1_1bit: MUX2v1_1bit port map (x=>u, y=>v, s=>s0, m=>sig0));
        inst2_MUX2v1_1bit: MUX2v1_1bit port map (x=>w, y=>x, s=>s0, m=>sig1));    
        inst3_MUX2v1_1bit: MUX2v1_1bit port map (x=>sig0, y=>sig1, s=>s1, m=>sig2));
        inst4_MUX2v1_1bit: MUX2v1_1bit port map (x=>sig2, y=>y, s=>s1, m=>m);

        end
    
    
end architecture behavior;			 