#¿Cuál es el valor de retorno del siguiente código?
#[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
#"TTPS Ruby".send(meth)
#end

El código aplica una serie de métodos a la cadena "TTPS Ruby" y luego mapea los resultados en un arreglo. Aquí está lo que hará cada método:

    :upcase convierte la cadena a mayúsculas.
    :downcase convierte la cadena a minúsculas.
    :capitalize capitaliza la primera letra de la cadena.
    :swapcase intercambia mayúsculas por minúsculas y viceversa.

Entonces, el resultado de este código será un arreglo que contiene los resultados de aplicar estos métodos a la cadena "TTPS Ruby". 

El valor de retorno:


["ttps ruby", "ttps ruby", "Ttps ruby", "ttps rUBY"]
