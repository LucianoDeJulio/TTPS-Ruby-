#Extendé las clases TrueClass y FalseClass para que ambas respondan al método de 
#instancia opposite , el cual en cada caso debe retornar el valor opuesto al que recibe la invocación
#al método. Por ejemplo:

#false.opposite
# => true
#true.opposite
# => false
#true.opposite.opposite
# => true

class TrueClass
    def opposite
      false
    end
end
  
class FalseClass
    def opposite
      true
    end
end
  
# Ejemplos
puts false.opposite  #Imprime "true"
puts true.opposite   #Imprime "false"
puts true.opposite.opposite  #Imprime "true"
  