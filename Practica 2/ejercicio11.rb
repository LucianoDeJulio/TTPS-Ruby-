#Dada la siguiente clase abstracta GenericFactory , implementá subclases de la misma que
#permitan la creación de instancias de dichas clases mediante el uso del método de clase .
#create , de manera tal que luego puedas usar esa lógica para instanciar objetos sin invocar
#directamente el constructor new.

class GenericFactory
    def self.create(**args)
      new(**args)
    end
  
    def initialize(**args)
      raise NotImplementedError
    end
end
  
  # Creamos una subclase de GenericFactory
class MiFactory < GenericFactory
    def initialize(nombre, edad)
      @nombre = nombre
      @edad = edad
    end
  
    def get_info
      "Nombre: #{@nombre}, Edad: #{@edad}"
    end
end
  
  # Usamos el método de clase create para crear una instancia
  objeto = MiFactory.create(nombre: "Luciano", edad: 28)
  
  # Mostramos información del objeto creado
  puts objeto.get_info