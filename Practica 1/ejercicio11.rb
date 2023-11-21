#Tomando el ejercicio anterior como referencia, ¿en qué situaciones usarías los métodos send
#y public_send definidos en la clase Object? ¿Cuál es la principal diferencia entre esos dos
#métodos?

Los métodos send y public_send son métodos definidos en la clase Object en Ruby
y se utilizan para invocar métodos en un objeto de una manera dinámica,
es decir, cuando el nombre del método se conoce en tiempo de ejecución
y no está determinado estáticamente en el código fuente. 
Sin embargo, hay una diferencia importante entre estos dos métodos.

El método send permite invocar cualquier método de un objeto, incluyendo métodos privados.
Esto significa que send puede utilizarse para llamar a métodos que normalmente no serían accesibles desde fuera del objeto.
Esta flexibilidad puede ser peligrosa si se utiliza de manera inadecuada, ya que puede romper la encapsulación.

class MyClass
    private
  
    def my_private_method
      puts "Este es un método privado"
    end
  end
  
  obj = MyClass.new
  obj.send(:my_private_method)  # Esto funciona y llama al método privado

  Por otro lado, el método public_send solo permite invocar métodos públicos en un objeto.
  Esto garantiza que se respete la encapsulación, ya que no se pueden llamar métodos privados o protegidos directamente desde fuera del objeto.
  Es una forma más segura de invocar métodos en Ruby.

  class MyClass
    private
  
    def my_private_method
      puts "Este es un método privado"
    end
  end
  
  obj = MyClass.new
  obj.public_send(:my_private_method)  # Esto generará un error, ya que my_private_method es privado

  En resumen, la principal diferencia entre send y public_send radica en el acceso a los métodos.
  send puede utilizarse para llamar a cualquier método (público, protegido o privado), lo que puede comprometer la encapsulación si no se usa con cuidado,
  mientras que public_send solo permite llamar a métodos públicos, lo que lo hace más seguro en términos de encapsulación y diseño de clases.
  En la mayoría de los casos, es recomendable utilizar public_send para garantizar un acceso controlado a los métodos.