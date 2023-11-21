#Implementá un método que reciba como parámetros un Hash y un Proc , y que devuelva un
#nuevo Hash cuyas las claves sean los valores del Hash recibido como parámetro, y cuyos valores
#sean el resultado de invocar el Proc con cada clave del Hash original. Por ejemplo:

#hash = { 'clave' => 1, :otra_clave => 'valor' }
#procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }

def procesar_hash(hash, proc)
    resultado = {}
  
    hash.each do |clave, valor|
      resultado[valor] = proc.call(clave)
    end
  
    resultado
end
  
# Ejemplo
hash = { 'clave' => 1, :otra_clave => 'valor' }
nuevo_hash = procesar_hash(hash, ->(x) { x.to_s.upcase })
  
puts nuevo_hash

#Otra Solucion:

def procesar_hash(hash, bloque)
    return hash.inject({}) { | newHash, (key, value) |
        newHash[value] = bloque.call(key); newHash
    }
end

hash = { "clave" => 1, :otra_clave => "valor" }
puts procesar_hash(hash, ->(x) { x.to_s.upcase }) # => { 1 => "CLAVE", "valor" => "OTRA_CLAVE"}
  