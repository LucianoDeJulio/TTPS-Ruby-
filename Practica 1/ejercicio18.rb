#Escribí un nuevo script, que de manera similar al implementado en el punto anterior haga el
#saludo usando un nombre que se provea, pero que en lugar de solicitar que el nombre se ingrese
#por entrada estándar, éste se reciba como argumento del script. Por ejemplo:

#$ ruby script.rb C-3PO
#¡Hola, C-3PO!

puts "¡Hola, #{ARGV[0]}!" # => ¡Hola, C-3PO!