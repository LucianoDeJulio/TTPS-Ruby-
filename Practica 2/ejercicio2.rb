#Modificá el método anterior para que en lugar de recibir un arreglo como único parámetro,
#reciba todos los números como parámetros separados. Por ejemplo:

#ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)
# => [0, 1, 2, 3, 4, 5, 6, 9, 10]

def ordenar(*args)
    return args.sort
end

puts ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9) # => [0, 1, 2, 3, 4, 5, 6, 9, 10]