#¿Qué son los lazy enumerators? ¿Qué ventajas ves en ellos con respecto al uso de 
#los enumeradores que no son lazy?

#Los lazy enumerators, o enumeradores "perezosos", son una característica de Ruby que permite
#la evaluación diferida de los elementos de una enumeración. En otras palabras,
#no calculan ni generan todos los elementos de la enumeración de inmediato,
#sino que los generan bajo demanda, a medida que se necesitan.
#Esta característica es especialmente útil cuando trabajas con enumeraciones
#potencialmente largas o costosas de calcular.

#Ejemplo de uso:
enumerador_perezoso = (1..Float::INFINITY).lazy.map { |x| x * 2 }
puts enumerador_perezoso.take(5).to_a
# El cálculo solo se realiza para los primeros 5 elementos (2, 4, 6, 8, 10)
#no para todos los números infinitos.
