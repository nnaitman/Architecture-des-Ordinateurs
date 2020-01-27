Library IEEE ;
USE ieee.std_logic_1164.all;
--7Segments decoder
--7segment display 

entity Decod7Seg_test is
    Port ( SW: in STD_LOGIC_VECTOR (3 downto 0);
           HEX0: out STD_LOGIC_VECTOR(6 downto 0));	
end Decod7Seg_test;

architecture behavioral of Decod7Seg_test is

    component Decod7Seg is 
		port(C: in STD_LOGIC_VECTOR (3 downto 0);
             seg: out STD_LOGIC_VECTOR(6 downto 0));
    end component;
    
begin
    inst_Decod7Seg : Decod7Seg port map (C(3 downto 0)=>SW(3 downto 0), seg(6 downto 0)=>HEX0(6 downto 0));
     
end behavioral;
