#Escribí un enumerador que genere series de números primos con algún tope, ya sea que se
#detenga al alcanzar o superar un valor, o que termine su ejecución al encontrar el enésimo número primo.

def primo?(n)
    return false if n <= 1
  
    (2..Math.sqrt(n)).none? { |i| (n % i).zero? }
  end
  
def enumerador_primos(limite = nil, enesimo = nil)
    Enumerator.new do |yielder|
      count = 0
      numero = 2
  
      loop do
        if primo?(numero)
          yielder << numero
          count += 1
          break if count == enesimo
          break if numero >= limite
        end
        numero += 1
      end
    end
end
  
# Ejemplo de uso: generando los primeros 10 números primos
enumerador = enumerador_primos(enesimo: 10)
  
enumerador.each do |primo|
    puts primo
end
  
# Ejemplo de uso: generando números primos hasta un límite
enumerador2 = enumerador_primos(limite: 50)
  
enumerador2.each do |primo|
    puts primo
end


#Otra Solucion:

require 'prime'

def primes(tope)
    enumerador = Prime.first tope
    enumerador.each { | numero |
        puts numero
    }
end

p primes 10