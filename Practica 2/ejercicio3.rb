#Suponé que se te da el método que implementaste en el ejercicio 2 para que lo uses a fin de 
#ordenar un conjunto de números que te son provistos en forma de arreglo. ¿Cómo podrías invocar
#el método? Por ejemplo, teniendo la siguiente variable con los números a ordenar:

#entrada = [10, 9, 1, 2, 3, 5, 7, 8]
# Dada `entrada', invocá a #ordenar utilizando los valores que
#contiene la variable
#ordenar(entrada) # <= Esto no funciona. Corregí esta invocación para
#que funcione.

def ordenar(*args)
    return args.sort
end

entrada = [10, 9, 1, 2, 3, 5, 7, 8]
puts ordenar(*entrada) # => [1, 2, 3, 5, 7, 8, 9, 10]