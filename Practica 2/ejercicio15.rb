#Escribí un método da_nil? que reciba un bloque, lo invoque y retorne si el valor de retorno del
#bloque fue nil . Por ejemplo:

#da_nil? { }
# => true
#da_nil? do
#'Algo distinto de nil'
#end
# => false

def da_nil?
    result = yield
  
    result.nil?
  end
  
#Ejemplos
resultado1 = da_nil? { }
resultado2 = da_nil? { 'Algo distinto de nil' }
  
puts resultado1  # Debería imprimir "true"
puts resultado2  # Debería imprimir "false"
  