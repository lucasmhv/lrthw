days = "Mon Tue Wed Thu Fri Sat Sun"

# O \n é apenas uma quebra de linha.
months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

# Assim você cria uma string com paragrafos etc, o 
# Ruby vai ignorar '' e palavras reservadas como end, if etc. 
# Use %q ou %Q antes, eles são diferentes -> https://docs.ruby-lang.org/en/2.0.0/syntax/literals_rdoc.html#label-Strings
puts %q{
    There's are something going on here.
    With this weird quote
    We'll be able to type as much as we like.
    Even 4 lines if we want, or 5, or 6. 
}