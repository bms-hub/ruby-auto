# begin
#   #tentando desenvolver
#   file = File.open("./ola.txt")
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   #Obter um possível erro
#   puts e
#   puts e.backtrace
# end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts e.message
  puts "Erro ao executar a soma."
end

soma("100", 10)
