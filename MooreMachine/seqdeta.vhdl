library ieee;
use ieee.std_logic_1164.all;

entity seqdeta is
  port (
    clk: in std_ulogic;
    clr: in std_ulogic;
    din: in std_ulogic;
    dout: out std_ulogic
  );
end seqdeta;

architecture seqdeta of seqdeta is
--  0, 1, 11, 110, 1101
type state_type is (s0, s1, s2, s3, s4);
signal present_state, next_state: state_type;

begin
  -- sreg: State register
  sreg: process(clk, clr)
  begin
    if clr = '1' then
      present_state <= s0;
    elsif clk'event and clk = '1' then
      present_state <= next_state;
    end if;
  end process;

  -- C1: State machine
  C1: process(present_state, din)
  begin
    case present_state is
      when s0 =>
        if din = '1' then
          next_state <= s1;
        else
          next_state <= s0;
        end if;
      when s1 =>
        if din = '1' then
          next_state <= s2;
        else
          next_state <= s0;
        end if;
      when s2 =>
        if din = '0' then
          next_state <= s3;
        else
          next_state <= s2;
        end if;
      when s3 =>
        if din = '1' then
          next_state <= s4;
        else
          next_state <= s0;
        end if;
      when s4 =>
        if din = '0' then
          next_state <= s0;
        else
          next_state <= s2;
        end if;
      when others =>
        null;
      end case;
    end process;

    -- C2: Output register
    C2: process(present_state)
    begin
      if present_state = s4 then
        dout <= '1';
      else
        dout <= '0';
      end if;
    end process;

  end seqdeta;
