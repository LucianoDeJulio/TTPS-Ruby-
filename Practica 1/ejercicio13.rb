#Escribí una función llamada listar que reciba un Hash y retorne un String con los pares de
#clave/valor formateados en una lista ordenada en texto plano. Por ejemplo:
#listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })
# => "1. perros: 2\n2. gatos: 2\n3. peces: 0\n4. aves: 0"


def listar(hash)
    str = ""
    hash.each_with_index { | (key, value), i | str += "#{i}. #{key}: #{value}\n" } 
    return str
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 }) # => "1. perros: 2\n2. gatos: 2\n3. peces: 0\n4. aves: 0"