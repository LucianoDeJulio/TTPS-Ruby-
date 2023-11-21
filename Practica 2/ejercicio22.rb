#Implementá una clase Palabra que funcione de la siguiente manera:

#• La clase se instancia con un argumento obligatorio (un String ) que será la palabra que represente.
#• Si la palabra que representa contiene caracteres y al menos un espacio, la instanciación
#debe arrojar una excepción NoEsUnaPalabra con el mensaje "<palabra> no es una
#palabra" (donde <palabra> es el valor recibido como argumento en el constructor.
#• Si la palabra que representa es un String vacío ( "" , " " son dos ejemplos de String s
#vacíos), debe arrojar una excepción EsUnStringVacio con el mensaje "Es un string
#vacío" .
#• La clase debe implementar los siguientes métodos de instancia:

#-vocales que debe retornar las vocales que contiene la palabra que representa, sin repeticiones.
#-consonantes que debe retornar las consonantes que contiene la palabra, sin repeticiones.
#-longitud que debe retornar la cantidad de caracteres que tiene la palabra.
#-es_palindroma? que debe retornar un valor boolean indicando si la palabra es un palindromo, es decir,
#si se lee igual en un sentido que en otro, teniendo al menos 3 letras.
#-en_jaquer que debe retornar la palabra que representa con las vocales cambiadas por numeros
#("a" por "4", "e" por "3", "i" por "1", "o" por "0" y "u" por "2")

class NoEsUnaPalabra < StandardError
    def initialize(mensaje)
        super(mensaje)
    end
end 

class EsUnStringVacio < StandardError
    def initialize(mensaje)
        super(mensaje)
    end
end 

class Palabra
    attr_accessor :palabra 

    def initialize(palabra)
        if(false)
            raise EsUnStringVacio.new("Es un String vacio.")
        elsif(false)
            raise NoEsUnaPalabra.new("<#{palabra}> no es una palabra.") 
        end
        self.palabra = palabra
    end

    def vocales
        return self.palabra.delete("bcdfghjklmnpqrstvwxyz").split("").uniq.sort
    end

    def consonantes
        return self.palabra.delete("aeiou").split("").uniq.sort
    end

    def longitud
        return self.palabra.length
    end

    def es_panvocalica?
        return self.palabra.tr("aeiou","").split("").uniq.length == 5
    end

    def es_palindrome?
        return self.palabra == self.palabra.reverse
    end

    def gritando
        return self.palabra.upcase
    end

    def en_jaquer
        return self.palabra.tr("aeiou","43102")
    end
end

p = Palabra.new("neuquen")
puts "Vocales: #{p.vocales}"
puts "Consonantes: #{p.consonantes}"
puts "Longitud: #{p.longitud}"
puts "Es panvocalica?: #{p.es_panvocalica?}"
puts "Es palindrome?: #{p.es_palindrome?}"
puts "Gritando: #{p.gritando}"
puts "En jaquer: #{p.en_jaquer}"