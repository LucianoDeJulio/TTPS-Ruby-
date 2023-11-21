#Escribí una función que encuentre la suma de todos los números naturales múltiplos de 3 y 5
#(ambos) que sean menores que un número tope que reciba como parámetro. Por ejemplo:

#multiplos_de_3_y_5(100)
# => 315

def multiplos_de(numeros, tope)
    return ((1..tope).select { | elemento | elemento.modulo(3).zero? && elemento.modulo(5).zero? }).sum
end

puts multiplos_de([3, 5], 100) # => 315