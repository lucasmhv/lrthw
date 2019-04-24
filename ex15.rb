# Recebe o nome do arquivo durante a execução do script
filename = ARGV.first
# Retorna um arquivo para a variavel txt usando o nome passado na execução do script
txt = open(filename)
puts "Here's your file #{filename}:"
# Executa o metódo read em txt, o mesmo lê todo o arquivo e o puts exibe na tela
puts txt.read
txt.close

print "Type the filename again: "
# Recebe o nome do arquivo, mas dessa vez com gets.chomp
file_again = $stdin.gets.chomp
txt_again = open(file_again)
puts txt_again.read
txt_again.close

# Study Drill
