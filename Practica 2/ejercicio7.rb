#Luego de implementar el ejercicio anterior, modificalo para que los usuarios implementen el
#método #to_s que debe retornar el atributo usuario (o email, según hayas decidido utilizar) y
#el rol que posee. Por ejemplo:

#lector.to_s
# => "elhector@example.org (Lector)"
#administrador.to_s
# => "admin@example.org (Administrador)"

class Documento 
    attr_accessor :creador, :contenido, :publico, :borrado 

    def initialize(usuario, publico = true, contenido = '') 
        self.creador = usuario 
        self.publico = publico 
        self.contenido = contenido 
        self.borrado = false 
    end 

    def borrar 
        self.borrado = true 
    end 
    
    def puede_ser_visto_por?(usuario) 
        usuario.puede_ver? self 
    end 
    
    def puede_ser_modificado_por?(usuario) 
        usuario.puede_modificar? self 
    end 
    
    def puede_ser_borrado_por?(usuario) 
        usuario.puede_borrar? self 
    end 
end

class Persona 
    attr_accessor :usuario, :clave, :email, :rol

    def initialize(usuario, clave, email, rol)
        self.usuario = usuario
        self.clave = clave
        self.email = email
        self.rol = rol
    end

    def puede_ver?(documento)
        return self.rol.puede_ver?(documento)
    end

    def puede_modificar?(documento)
        return self.rol.puede_modificar?(documento)
    end
    
    def puede_borrar?(documento)
        return self.rol.puede_borrar?(documento)
    end

    def to_s()
        return "#{self.usuario} (#{self.rol.class})"
    end
end

class Lector
    def puede_ver?(documento)
        return documento.publico
    end

    def puede_modificar?(documento)
        return false
    end

    def puede_borrar?(documento)
        return false
    end
end

class Redactor < Lector
    def puede_modificar?(documento)
        return documento.creador == self
    end
end

class Director < Lector
    def puede_ver?(documento)
        return true
    end

    def puede_modificar?(documento)
        return !documento.borrado
    end
end

class Administrador < Director
    def puede_borrar?(documento)
        return true
    end
end

rol = Administrador.new
usuario = Persona.new("LucianoDeJulio","MiContraseña","lucianodejulio@gmail.com",rol)
puts usuario.to_s