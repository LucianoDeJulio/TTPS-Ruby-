#Escribí una función que exprese en palabras la hora que recibe como parámetro, según las siguientes reglas:
#• Si el minuto está entre 0 y 10, debe decir “en punto”,
#• si el minuto está entre 11 y 20, debe decir “y cuarto”,
#• si el minuto está entre 21 y 34, debe decir “y media”,
#• si el minuto está entre 35 y 44, debe decir “menos veinticinco” con la hora siguiente,
#• si el minuto está entre 45 y 55, debe decir “menos cuarto” con la hora siguiente,
#• y si el minuto está entre 56 y 59, debe decir “Casi son las” con la hora siguiente

#Tomá como ejemplos los siguientes casos:
#tiempo_en_palabras(Time.new(2023, 10, 21, 10, 1))
# => "Son las 10 en punto"
#tiempo_en_palabras(Time.new(2023, 10, 21, 9, 33))
# => "Son las 9 y media"
#tiempo_en_palabras(Time.new(2023, 10, 21, 8, 45))
# => "Son las 9 menos cuarto"
#tiempo_en_palabras(Time.new(2023, 10, 21, 6, 58))
# => "Casi son las 7"
#tiempo_en_palabras(Time.new(2023, 10, 21, 0, 58))
# => "Casi es las 1"

def tiempo_en_palabras (tiempo)
    if tiempo.hour == 1
        str = "Es la"
    else
        str = "Son las"
    case tiempo.min
    when (0..10)
        return("#{str} #{tiempo.hour} en punto")
    when (11..20)
        return("#{str} #{tiempo.hour} y cuarto")
    when (21..34)
        return("#{str} #{tiempo.hour} y media")
    when (35..44)
        return("#{str} #{tiempo.hour} menos veinticinco")
    when (45..55)
        return("#{str} #{tiempo.hour} menos cuarto")
    when (56..59)
        return("#{str} #{tiempo.hour} Casi son las")
    end
end

puts tiempo_en_palabras(Time.new(2022, 10, 21, 10, 1)) # => "Son las 10 en punto" 
puts tiempo_en_palabras(Time.new(2022, 10, 21, 9, 33)) # => "Son las 9 y media" 
puts tiempo_en_palabras(Time.new(2022, 10, 21, 8, 45)) # => "Son las 9 menos cuarto" 
puts tiempo_en_palabras(Time.new(2022, 10, 21, 6, 58)) # => "Casi son las 7" 
puts tiempo_en_palabras(Time.new(2022, 10, 21, 0, 58)) # => "Casi son las 1"