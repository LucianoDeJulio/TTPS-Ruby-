#Modificá la implementación del ejercicio anterior para que GenericFactory sea un módulo
#que se incluya como Mixin en las subclases que implementaste. ¿Qué modificaciones tuviste
#que hacer en tus clases?

#Respuesta:
#Para convertir GenericFactory en un módulo que se incluye como Mixin en las subclases,
#primero necesitas eliminar la herencia de clase (< GenericFactory) de las subclases y
#en su lugar, incluir el módulo GenericFactory en cada subclase.
#Además, debes modificar el método create para que sea un método de instancia, ya que ahora es un Mixin.
#Entonces el codigo quedaria de la siguiente manera:

module GenericFactory
    def create(**args)
      new(**args)
    end
  
    def initialize(**args)
      raise NotImplementedError
    end
end
  
# Creamos una subclase que incluye el módulo GenericFactory
class MiFactory
    include GenericFactory
  
    def initialize(nombre, edad)
      @nombre = nombre
      @edad = edad
    end
  
    def get_info
      "Nombre: #{@nombre}, Edad: #{@edad}"
    end
end
  
# Usamos el método de instancia create para crear una instancia
objeto = MiFactory.new.create(nombre: "Juan", edad: 30)
  
# Mostramos información del objeto creado
puts objeto.get_info