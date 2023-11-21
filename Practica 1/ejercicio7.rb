#Escribí una función llamada contar que reciba como parámetro dos String y que retorne
#la cantidad de veces que aparece el segundo String en el primero, en una búsqueda case‑
#insensitive (sin distinguir mayúsculas o minúsculas). Por ejemplo:
#contar("La casa de la esquina tiene la puerta roja y la ventana blanca
#.", "la")
# => 5

def contar(cadena, cadena2)
    return cadena.downcase.scan(cadena2.downcase).count
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 5