#Modificá la función anterior para que sólo considere como aparición del segundo String
#cuando se trate de palabras completas. Por ejemplo:
#contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
# => 4

def contar_palabras(cadena, cadena2)
    return cadena.downcase.split(" ").count(cadena2.downcase)
end

puts contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 4