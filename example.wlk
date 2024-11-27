class Personaje{
  var fuerza
  var inteligencia
  var rol

  method cambioDeRol(nuevoRol){
    rol = nuevoRol
  }
}

class Guerrero{}

class Cazador{
  var mascota
}

class Brujo{}

class Mascota{
  var edad
  var fuerza
  var tieneGarras = false
}

class Localidad{
  const habitantes = []
}

class Aldea inherits Localidad{

}

class Ciudad inherits Localidad{

}

class Ejercito{

}
