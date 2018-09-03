library ieee;
use ieee.std_logic_1164.all;

entity seqdeta_tb is
end seqdeta_tb;

architecture test of seqdeta_tb is
	component seqdeta
    port (
      clk: in std_ulogic;
      clr: in std_ulogic;
      din: in std_ulogic;
      dout: out std_ulogic
    );
	end component;

  signal clk, clr, din, dout : std_ulogic;
begin
  seqdeta_adder: seqdeta port map(clk => clk, clr => clr, din => din, dout => dout);

  process begin
    clk <= '1';
    clr <= '1';
    din <= '0';
    wait for 1 ns;
    clk <= '0';
    clr <= '1';
    din <= '0';
    wait for 1 ns;

    clk <= '1';
    clr <= '0';
    din <= '1';
    wait for 1 ns;
    clk <= '0';
    clr <= '0';
    din <= '1';
    wait for 1 ns;

    clk <= '1';
    clr <= '0';
    din <= '1';
    wait for 1 ns;
    clk <= '0';
    clr <= '0';
    din <= '1';
    wait for 1 ns;

    clk <= '1';
    clr <= '0';
    din <= '1';
    wait for 1 ns;
    clk <= '0';
    clr <= '0';
    din <= '1';
    wait for 1 ns;

    clk <= '1';
    clr <= '0';
    din <= '0';
    wait for 1 ns;
    clk <= '0';
    clr <= '0';
    din <= '0';
    wait for 1 ns;

    clk <= '1';
    clr <= '0';
    din <= '1';
    wait for 1 ns;
    clk <= '0';
    clr <= '0';
    din <= '1';
    wait for 1 ns;

    clk <= '1';
    clr <= '0';
    din <= '1';
    wait for 1 ns;
    clk <= '0';
    clr <= '0';
    din <= '1';
    wait for 1 ns;

    clk <= '1';
    clr <= '0';
    din <= '0';
    wait for 1 ns;
    clk <= '0';
    clr <= '0';
    din <= '0';
    wait for 1 ns;

    assert false report "Reached end of test";
    wait;
  end process;
end test;
