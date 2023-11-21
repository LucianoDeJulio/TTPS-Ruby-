#Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para probarlo.
#Reverso debe contener los siguientes métodos:

#1. #di_tcejbo : Imprime el object_id del receptor en espejo (en orden inverso).
#2. #ssalc : Imprime el nombre de la clase del receptor en espejo.

module Reverso
    def di_tcejbo
      puts "El object_id en espejo es: #{object_id.to_s.reverse}"
    end
  
    def ssalc
      puts "El nombre de la clase en espejo es: #{self.class.to_s.reverse}"
    end
  end
  
  # Ahora incluimos el módulo Reverso en una clase para probarlo.
  class Prueba
    include Reverso
  end
  
  # Creamos una instancia de la clase Prueba y probamos los métodos.
  objeto = Prueba.new
  objeto.di_tcejbo
  objeto.ssalc
  