#Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá las
#siguientes operaciones sobre dicha cadena, implementando métodos que funcionen de la si‑
#guiente forma:
#• string_reverso: retorna el string con los caracteres en orden inverso.
#• string_sin_espacio: elimina los espacios en blanco que contenga.
#• string_a_arreglo_ascii: retorna un arreglo con cada uno de los caracteres convertidos a su correspondiente valor ASCII.
#• string_remplaza_vocal: cambia las vocales por números:
# "a" o "A" por "4",
# "e" o "E" por "3",
# "i" o "I" por "1",
# "o" u "O" por "0",
# y "u" o "U" por "6"

def string_reverso(cadena)
    return cadena.reverse()
end

def string_sin_espacio(cadena)
    return cadena.delete(" ")
end

def string_a_arreglo_ascii(cadena)
    return cadena.split("").map { | letra | letra.ord }
end

def string_remplaza_vocal(cadena)
    return cadena.tr("aAeEiIoOuU", "4433110066")
end

puts string_reverso("Hola mundo") # => "odnum aloH"
puts string_sin_espacio("Hola mundo") # => "Holamundo"
puts string_a_arreglo_ascii("Hola mundo") # => [72, 111, 108, 97, 32, 109, 117, 110, 100, 111]
puts string_remplaza_vocal("Hola mundo") # => H0l4 m6nd0