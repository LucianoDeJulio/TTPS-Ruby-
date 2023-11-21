#Escribí un enumerador que calcule la serie de Fibonacci.

fibonacci = Enumerator.new do |yielder|
    a, b = 0, 1
    loop do
      yielder.yield a
      a, b = b, a + b
    end
end
  
# Uso del enumerador para generar los primeros 10 números de Fibonacci
10.times { puts fibonacci.next }