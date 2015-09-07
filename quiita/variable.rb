$greeting = "Noradzeer\n"

def print_greeting
  print $greeting
end

print_greeting

Konst1 = 1
K_2 = 2

module Mod
  K_3 = 3
end

p Konst1
p K_2
p Mod
p Mod::K_3

module M1
  class C2
    module M3
      K4 = 5
    end
  end
end

X = M1::C2::M3
p X::K4
