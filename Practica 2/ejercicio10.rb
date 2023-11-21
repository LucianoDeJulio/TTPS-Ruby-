#Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad de
#veces que los métodos de instancia definidos en ella es invocado. Utilizalo en distintas clases,
#tanto desarrolladas por vos como clases de la librería standard de Ruby, y chequeá los resultados.
#El Mixin debe tener los siguientes métodos:

#1. count_invocations_of(sym) : método de clase que al invocarse realiza las tareas necesarias
#para contabilizar las invocaciones al método de instancia cuyo nombre es sym (un símbolo).
#2. invoked?(sym) : método de instancia que devuelve un valor booleano indicando si el
#método llamado sym fue invocado al menos una vez en la instancia receptora.
#3. invoked(sym) : método de instancia que devuelve la cantidad de veces que el método
#identificado por sym fue invocado en la instancia receptora.

module Countable
    def invocations
        @invocations ||= Hash.new(0)
    end

    module ClassMethod
        def count_invocations_of(metodo)
            aliasmethod(":original#{metodo}",metodo)
            definemethod"#{metodo}" do
                invocations[method] += 1
                send(":original#{metodo}")
            end 
        end
    end

    def invoked?(metodo)
        @invocations[metodo] > 0
    end

    def invoked(metodo)
        @invocations[metodo]
    end
end

class Greeter 
    include Countable #include Countable # Incluyo el Mixin 
    
    def hi 
        puts 'Hey!' 
    end 

    def bye 
        puts 'See you!' 
    end 

    count_invocations_of :hi # Indico que quiero llevar la cuenta de veces que se invoca el mé todo #hi
end 

a = Greeter.new
b = Greeter.new 

a.invoked? :hi # => false 
b.invoked? :hi # => false 
a.hi # Imprime "Hey!" 
a.invoked :hi # => 1 
b.invoked :hi # => 0