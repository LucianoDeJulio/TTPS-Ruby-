#Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto
#Time y que calcule la cantidad de minutos que faltan para ese momento. Si el parámetro de
#fecha no es provisto, asumí que la consulta es para la medianoche de hoy.
#Por ejemplo:

#cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
# => Retorna la cantidad de minutos que faltan para las 23:59:59 del
31/12/2032
#cuanto_falta?
# => Retorna la cantidad de minutos que faltan para la medianoche de hoy

def cuanto_falta?(fecha = Time.now())
    falta = (Time.new(fecha.year,fecha.month,fecha.day,23,59,59) - fecha).to_i
    minutos = (falta / 60).to_i
    puts "Faltan #{minutos} minutos"
end

cuanto_falta?(Time.new(2032, 12, 31, 23, 59, 59))