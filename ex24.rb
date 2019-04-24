puts "Let's practice everything!"
puts "You\'d need to know \'bout escapes with \\ that do \n new lines and \t tabs."

poem = <<END
\tOnce more into the fray
into the last good fight I'll ever have
live and die in this day
\n\tlive and die in this day
END

puts "----------"
puts poem
puts "----------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula started
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point /= 10
puts "We can also do this way: "
puts "We'd have %d beans, %d jars, and %d crates." % secret_formula(start_point)