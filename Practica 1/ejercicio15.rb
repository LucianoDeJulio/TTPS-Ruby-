#Escribí una función llamada rot13 que encripte un String recibido como parámetro utilizando
#el algoritmo ROT13. Por ejemplo:

#rot13("¡Bienvenidos a la cursada de TTPS Opción Ruby!")
# => "¡Ovrairavqbf n yn phefnqn qr GGCF Bcpvóa Ehol!"

def rot13(text)
    encrypted_text = text.chars.map do |char|
      if char.match(/[a-zA-Z]/)
        # Verifica si el carácter es una letra
        base = char =~ /[a-z]/ ? 'a' : 'A'
        ((char.ord - base.ord + 13) % 26 + base.ord).chr
      else
        char
      end
    end
  
    encrypted_text.join
  end
  
  # Ejemplo de uso
  text = "¡Bienvenidos a la cursada de TTPS Opción Ruby!"
  encrypted_text = rot13(text)
  puts encrypted_text