#Suponé que tenés el siguiente script y se te pide que lo hagas resiliente (tolerante a fallos),
#intentando siempre que se pueda recuperar la situación y volver a intentar la operación que falló.
#Realizá las modificaciones que consideres necesarias para lograr que este script sea más robusto.

# Este script lee una secuencia de no menos de 15 números desde teclado y luego imprime el resultado de la división
# de cada número por su entero inmediato anterior.
# Como primer paso se pide al usuario que indique la cantidad de números que ingresará.

cantidad = 0
while cantidad < 15
    puts 'Cuál es la cantidad de números que ingresará? Debe ser al menos 15'
    cantidad = Integer(gets)
end

# Luego se almacenan los números
numeros = 1.upto(cantidad).map do
    puts 'Ingrese un número'
    numero = Integer(gets)
end

# Y finalmente se imprime cada número dividido por su número entero inmediato anterior
resultado = numeros.map { |x| x / (x - 1) }
puts 'El resultado es: %s' % resultado.join(', ')

################################

#scrip modificado:

# Este script lee una secuencia de no menos de 15 números desde teclado y luego imprime el resultado de la división
# de cada número por su entero inmediato anterior.
# Como primer paso se pide al usuario que indique la cantidad de números que ingresará.

begin
    cantidad = 0
    while cantidad < 15
      puts 'Cuál es la cantidad de números que ingresará? Debe ser al menos 15'
      cantidad = Integer(gets)
    end
  
    # Luego se almacenan los números
    numeros = []
    cantidad.times do |i|
      begin
        puts "Ingrese el número ##{i + 1}"
        numero = Integer(gets)
        numeros << numero
      rescue ArgumentError
        puts "Error: Ingrese un número válido."
        retry
      end
    end
  
    # Y finalmente se imprime cada número dividido por su número entero inmediato anterior
    resultado = []
    numeros.each_with_index do |x, i|
      begin
        resultado << x / (x - 1)
      rescue ZeroDivisionError
        resultado << "No se puede dividir por cero (#{x - 1})."
      rescue => e
        resultado << "Error: #{e.message}"
      end
    end
  
    puts 'El resultado es: %s' % resultado.join(', ')
  
  rescue Interrupt
    puts "\nScript interrumpido por el usuario."
  rescue => e
    puts "Error inesperado: #{e.message}"
  end

  
  #En este script modificado:

  #1- Se utiliza un bloque begin...rescue para manejar excepciones durante la entrada de datos y los cálculos.
  #2- Se introducen validaciones para asegurarse de que la cantidad de números ingresados sea al menos 15 y que los números ingresados sean enteros válidos.
  #3- Se manejan excepciones específicas, como ArgumentError para la entrada de números no válidos y ZeroDivisionError para evitar la división por cero.
  #4- Se muestra un mensaje de error en caso de excepciones y se sigue con la ejecución en lugar de detener el programa.
  #5- Se maneja la interrupción (Interrupt) para permitir al usuario detener el script de manera controlada.

  #Estas modificaciones hacen que el script sea más robusto y capaz de manejar situaciones inesperadas o errores del usuario.
  