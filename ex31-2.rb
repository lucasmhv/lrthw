intro = <<INTRO
  You have been transported to a strange world. You don't have any memorie or anything.
  You wake up on a strange room with some stuff lying around, you can see: 
  \t1. a sword and shield on a table. 
  \t2. a bow and a quiver of arrows hanging on the wall.
  \t3. some books on the floor.
  You feel like you'll need then, but you can only take one of those. What you do?
INTRO

warrior_path = <<WARRIOR
  You choose the path of the Warrior, again you are transported to somewhere instantly after getting your equipments. 
  The next thing you see are goblins running into you! Protect yourself, battle is on!
  \t1. Atack!
  \t2. RUN TO THE HILLS!
  \t3. WHATAFUCK!
  What you do?
WARRIOR

ranger_path = <<RANGER
  You die.
RANGER

mage_path = <<MAGE
  Mages are the coolest. You win.
MAGE

puts intro
path = gets.chomp.to_i

case path
when 1 then puts warrior_path
when 2 then puts ranger_path
when 3 then puts mage_path
else puts "Go back to your boring life. G-A-M-E O-V-E-R!"
end

action = gets.chomp.to_i

if action == 1
  puts "They're weak, you win!"
elsif action == 2
  puts "You try to run, but you fail. Those little brats are weak but they're fast and got ya. G-A-M-E O-V-E-R!"
elsif action == 3
  puts "You freeze and suddenly blood come out of your mouth, you're dead. G-A-M-E O-V-E-R!"
else 
  puts "I'm the GM, wanna cheat on me? C'mon. G-A-M-E O-V-E-R!"
end

