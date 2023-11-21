#Escribí una función más genérica, parecida a la del ejercicio anterior, que reciba como 
#parámetro un String y un número n, y que realice una rotación de n lugares de las letras del String
#y retorne el resultado. Por ejemplo:

#rot("¡Bienvenidos a la cursada 2023 de TTPS Opción Ruby!", 13)
# => "¡Ovrairavqbf n yn phefnqn 2023 qr GGCF Bcpvóa Ehol!"

def rot(text, n)
    rotated_text = text.chars.map do |char|
      if char.match(/[a-zA-Z]/)
        # Verifica si el carácter es una letra
        base = char =~ /[a-z]/ ? 'a' : 'A'
        ((char.ord - base.ord + n) % 26 + base.ord).chr
      else
        char
      end
    end
  
    rotated_text.join
  end
  
  # Ejemplo de uso
  text = "¡Bienvenidos a la cursada 2023 de TTPS Opción Ruby!"
  n = 13
  result = rot(text, n)
  puts result
  