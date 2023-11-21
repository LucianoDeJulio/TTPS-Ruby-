#Mejorar la función anterior en una nueva llamada listar_mejorada para que además reciba
#opcionalmente un parámetro llamado pegamento (su valor por defecto debe ser ": ") que sea
#el que utilice para unir los pares de clave/valor. Por ejemplo:

#listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ")
# => "1. perros -> 2\n2. gatos -> 2\n3. peces -> 0\n4. aves -> 0"


def listar(hash, pegamento = ":")
    str = ""
    hash.each_with_index { | (key, value), i | str += "#{i}. #{key}#{pegamento} #{value}\n" }
    return str
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ") # => "1. perros -> 2\n2. gatos -> 2\n3. peces -> 0\n4. aves -> 0"