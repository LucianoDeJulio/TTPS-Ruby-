#Implementá las funciones necesarias para que, dado un color expresado en notación RGB, se
#pueda obtener su representación en las notaciones entera y hexadecimal. La notación entera
#se define como red + green * 256 + blue * 256 * 256 y la hexadecimal como el 
#resultado de expresar en base 16 el valor de cada color y concatenarlos en orden. Por ejemplo:

#notacion_hexadecimal([0, 128, 255])
# => '#0080FF'
#notacion_entera([0, 128, 255])
# => 16744448

def notacion_hexadecimal(colores)
    return "#" + colores.map { | elemento | format("%02X", elemento).upcase }.join 
end

def notacion_entera(colores)
    return colores.map.with_index { | elemento, i | elemento * (256.pow(i))}.sum 
end

puts notacion_hexadecimal([0, 128, 255]) # => '#0080FF'
puts notacion_entera([0, 128, 255]) # => 16744448