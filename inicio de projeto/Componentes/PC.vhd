library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is
	port(
		clk: in std_logic;
		next_address: in std_logic_vector(31 downto 0);
		current_address: out std_logic_vector(31 downto 0)
	);
end PC;

architecture bhv of PC is

	signal address: std_logic_vector(31 downto 0):= x"00000000";

	begin

	
	current_address <= address;
	process(clk)
		begin
		if rising_edge(clk) then
			address <= next_address;
		end if;
	end process;

end bhv;