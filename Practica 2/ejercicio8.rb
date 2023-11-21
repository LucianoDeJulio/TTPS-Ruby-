#¿Qué diferencia hay entre el uso de include y extend a la hora de incorporar un módulo en una clase?
#1. Si quisieras usar un módulo para agregar métodos de instancia a una clase, ¿qué forma
#usarías a la hora de incorporar el módulo a la clase?
#2. Si en cambio quisieras usar un módulo para agregar métodos de clase, ¿qué forma usarías en ese caso?

La diferencia principal entre include y extend radica en cómo incorporan módulos en una clase y qué tipo de métodos se agregan:

include: Se utiliza para incorporar un módulo en una clase y añadir sus métodos como métodos de instancia.
Esto significa que los métodos del módulo estarán disponibles para las instancias de la clase, pero no como métodos de clase.

module MiModulo
    def metodo_de_instancia
      puts "Este es un método de instancia."
    end
  end
  
class MiClase
    include MiModulo
end
  
objeto = MiClase.new
objeto.metodo_de_instancia

En este ejemplo, metodo_de_instancia es un método de instancia que está disponible para las instancias de MiClase después de incluir el módulo.

extend: Se utiliza para incorporar un módulo en una clase y agregar sus métodos como métodos de clase.
Esto significa que los métodos del módulo estarán disponibles en la clase misma como métodos de clase, pero no en las instancias de la clase.

module MiModulo
    def metodo_de_clase
      puts "Este es un método de clase."
    end
end
  
class MiClase
   extend MiModulo
end
  
MiClase.metodo_de_clase

En este ejemplo, metodo_de_clase es un método de clase que está disponible en MiClase después de extender el módulo.

Entonces, para responder a las preguntas:

   1. Si se quiere agregar métodos de instancia a una clase, debes usar include.

   2.  Si se quiere agregar métodos de clase a una clase, debes usar extend.

La elección entre include y extend depende de si se quiere que los métodos del módulo estén disponibles para las instancias de la clase o para la clase en sí.
  
  