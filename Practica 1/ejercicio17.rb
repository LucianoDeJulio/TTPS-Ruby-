#Escribí un script en Ruby que le pida a quien lo ejecute su nombre, el cual ingresará por
#entrada estándar (el teclado), y que lo utilice para saludarl@ imprimiendo en pantalla ¡Hola, <
#nombre>!. Por ejemplo:

#$ ruby script.rb
#Por favor, ingresá tu nombre:
#R2-D2
#¡Hola, R2-D2!

puts "Por favor, ingresá tu nombre:"
nombre = gets
puts "¡Hola, #{nombre}!" # => ¡Hola, R2-D2!