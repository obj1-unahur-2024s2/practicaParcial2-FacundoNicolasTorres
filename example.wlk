class Personaje{
  var fuerza
  var inteligencia
  var rol

  method fuerza() = fuerza

  method cambioDeRol(nuevoRol){
    rol = nuevoRol
  }

  method potencialOfencibo() = fuerza *10 + rol.potencialExtra()
  
  method esGroso() = self.esInteligente() or self.esGrosoEnSuRol()

  method esGrosoEnSuRol() = rol.esGroso(self)
  method esInteligente() = inteligencia > 50
}

class Orco inherits Personaje{
  override method potencialOfencibo() = super() + super() * 0.10
  override method esInteligente() = false
}

object guerrero{

  method potencialExtra() = 100
  method esGroso(personaje) = personaje.fuerza() > 50
}

class Cazador{
  var mascota

  method potencialExtra() = mascota.potencial()
  method esGroso(personaje) = mascota.esLongeva()
}

object brujo{

  method potencialExtra() = 0
  method esGroso(siempre) = true
}

class Mascota{
  var edad
  var fuerza
  var tieneGarras = false

  method potencial() = if(tieneGarras) fuerza else fuerza *2
  method esLongeba() = edad > 10
}

class Localidad{
  const habitantes = []
}

class Aldea inherits Localidad{

}

class Ciudad inherits Localidad{

}

class Ejercito{
  const ejercito = []

  method potencialOfenciboTotal() = ejercito.sum({p => p.potencialOfencibo()})
  
}
