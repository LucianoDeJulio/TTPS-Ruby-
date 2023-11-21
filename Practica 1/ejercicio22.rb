#Creá otra función, similar a la anterior, que busque los números naturales múltiplos de N 
#números enteros que recibirá como parámetro en un arreglo. Por ejemplo:

#multiplos_de([3, 5], 100)
# => 315
#multiplos_de([3, 5, 17, 28, 65], 100_000)
# => 92820

def multiplos_de(numeros, tope)
    return ((1..tope).select { | elemento | numeros.all? { | numero | elemento.modulo(numero).zero? } }).sum
end

puts multiplos_de([3, 5, 17, 28, 65], 100_000) # => 92820