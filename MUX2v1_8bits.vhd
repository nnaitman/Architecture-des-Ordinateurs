Library IEEE ;
USE ieee.std_logic_1164.all;
--Entity description part 
entity MUX2v1_8bits is
	--We define two bit_vectors of 8bits IN and one OUT
	port(x,y: IN std_logic_vector(7 downto 0);
		s: IN std_logic;--the selector
		m: out std_logic_vector(7 downto 0));
end entity;

--Behavior part
Architecture MUX2v1_8bits_behavior of MUX2v1_8bits is
	--MUX2v1 component
	component MUX2v1 
		Port ( s, x, y : in STD_LOGIC;
		       m : out STD_LOGIC);
	end component;

	--To describe the behavior of a MUX2to1_8bits we have to instanciate 8 MUX2v1
		--in the Architecture part.	
	begin
		gen: for i in 0 to 7 GENERATE
			inst_MUX2v1 : MUX2v1 port map (
					x => x(i),
					y => y(i),
					s => s,
					m => m(i));
	end

end MUX2v1_8bits_behavior;

	
