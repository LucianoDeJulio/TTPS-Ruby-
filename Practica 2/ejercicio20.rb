#Extendé la clase Array con el método randomly que funcione de la siguiente manera:

#• Si recibe un bloque, debe invocar ese bloque con cada uno de los elementos del arreglo
#en orden aleatorio, sin repetir los elementos sobre los que se lo invoca.
#• Si no recibe un bloque, debe devolver un enumerador que va arrojando, de a uno, los 
#elementos del arreglo en orden aleatorio.

class Array
    def randomly(&block)
        if block_given?
            self.shuffle.each { | elemento |
                block.call(elemento)
            }
        else
            self.shuffle.to_enum
        end
    end
end

[1, 2, 3, 4].randomly { |x| puts x + 1 }

enumerador = [1, 2, 3, 4].randomly
enumerador.each { | elemento | puts "El elemento es #{elemento}" }