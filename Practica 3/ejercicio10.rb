#Para implementar el método procesar_archivo, puedes usar un bloque begin...rescue para manejar posibles excepciones y procesar cada línea del archivo.

def procesar_archivo(ruta, &bloque)
    lineas_procesadas = 0
  
    begin
      File.open(ruta, 'r') do |archivo|
        archivo.each_line do |linea|
          begin
            resultado = yield(linea.chomp) # Elimina el salto de línea al final de la línea
            puts resultado
            lineas_procesadas += 1
          rescue StandardError => e
            puts "Error encontrado: #{e.message} (#{e.class})"
          end
        end
      end
    rescue Errno::ENOENT
      puts "Error: El archivo '#{ruta}' no se encontró."
    rescue StandardError => e
      puts "Error inesperado: #{e.message} (#{e.class})"
    end
  
    return lineas_procesadas
  end
  
  # Ejemplo de uso
  archivo = '/tmp/datos.txt'
  cantidad_lineas = procesar_archivo(archivo) { |linea| Integer(linea) rescue "Error en conversión" }
  
  puts "Valor de retorno: #{cantidad_lineas}"
  

  #En este código:

  #1- Abrimos el archivo en modo lectura ('r') utilizando un bloque File.open para asegurarnos de que se cierre adecuadamente.

  #2- Iteramos a través de cada línea del archivo con archivo.each_line.

  #3- Dentro del bloque de iteración, utilizamos un bloque begin...rescue para manejar las excepciones que pueden ocurrir al procesar cada línea.

  #4- Intentamos ejecutar el bloque recibido (yield(linea.chomp)) en un intento de convertir la línea a un número entero. Si tiene éxito, imprimimos el resultado. Si falla, imprimimos un mensaje de error indicando la excepción.

  #5- Manejamos excepciones de archivo (Errno::ENOENT) y excepciones generales (StandardError) que pueden ocurrir durante la apertura del archivo o la ejecución del bloque.

  #6- El método devuelve el número de líneas procesadas correctamente (lineas_procesadas).

  #En el ejemplo de uso, la función se llama con un archivo que contiene las líneas mencionadas, y el resultado será como se describe en el enunciado, con la cantidad de líneas procesadas correctamente como valor de retorno.