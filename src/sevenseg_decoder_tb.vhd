----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 04:07:50 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
-- declare the component of your top-level design
    component sevenseg_decoder
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
    );
    end component sevenseg_decoder;
    
    signal w_Hex : std_logic_vector (3 downto 0);
    signal w_seg : std_logic_vector (6 downto 0);
    
begin
    sevenseg_decoder0 : sevenseg_decoder
    port map(
        i_Hex(0) => w_Hex(0),
        i_Hex(1) => w_Hex(1),
        i_Hex(2) => w_Hex(2),
        i_Hex(3) => w_Hex(3),
        o_seg_n(0) => w_seg(0),
        o_seg_n(1) => w_seg(1),
        o_seg_n(2) => w_seg(2),
        o_seg_n(3) => w_seg(3),
        o_seg_n(4) => w_seg(4),
        o_seg_n(5) => w_seg(5),
        o_seg_n(6) => w_seg(6)
    );
    
    test_process : process
    begin
        w_Hex <= x"0"; wait for 10 ns;
            assert w_seg = "1000000" report "Error on input 0" severity failure;
        w_Hex <= x"1"; wait for 10 ns;
            assert w_seg = "1111001" report "Error on input 1" severity failure;
        w_Hex <= x"2"; wait for 10 ns;
            assert w_seg = "0100100" report "Error on input 2" severity failure;
        w_Hex <= x"3"; wait for 10 ns;
            assert w_seg = "0110000" report "Error on input 3" severity failure;
        w_Hex <= x"4"; wait for 10 ns;
            assert w_seg = "0011001" report "Error on input 4" severity failure;
        w_Hex <= x"5"; wait for 10 ns;
            assert w_seg = "0010010" report "Error on input 5" severity failure;
        w_Hex <= x"6"; wait for 10 ns;
            assert w_seg = "0000010" report "Error on input 6" severity failure;
        w_Hex <= x"7"; wait for 10 ns;
            assert w_seg = "1111000" report "Error on input 7" severity failure;
        w_Hex <= x"8"; wait for 10 ns;
            assert w_seg = "0000000" report "Error on input 8" severity failure;
        w_Hex <= x"9"; wait for 10 ns;
            assert w_seg = "0011000" report "Error on input 9" severity failure;
        w_Hex <= x"A"; wait for 10 ns;
            assert w_seg = "0001000" report "Error on input 0" severity failure;
        w_Hex <= x"B"; wait for 10 ns;
            assert w_seg = "0000011" report "Error on input 0" severity failure;
        w_Hex <= x"C"; wait for 10 ns;
            assert w_seg = "0100111" report "Error on input 0" severity failure;
        w_Hex <= x"D"; wait for 10 ns;
            assert w_seg = "0100001" report "Error on input 0" severity failure;
        w_Hex <= x"E"; wait for 10 ns;
            assert w_seg = "0000110" report "Error on input 0" severity failure;
        w_Hex <= x"F"; wait for 10 ns;
            assert w_seg = "0001110" report "Error on input 0" severity failure;
            
        wait;
         
    end process;

end Behavioral;
