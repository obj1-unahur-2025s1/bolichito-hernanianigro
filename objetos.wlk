//colores
//Como colores contemplar (al menos) rojo, verde, celeste y pardo. De estos, los dos primeros son fuertes, los otros no. El naranja es un color fuerte.
object rojo {
  method esFuerte() {
    return true
  }
}
object verde {
  method esFuerte() {
    return true
  }
}
object celeste {
  method esFuerte() {
    return false
  }
}
object pardo {
  method esFuerte() {
    return false
  }
}
object naranja {
  method esFuerte() {
    return true
  }
}

//materiales
//Como materiales tenemos: el cobre y el vidrio que brillan; el lino, la madera y el cuero que no.
object cobre {
  method esBrillante() {
    return true
  }
}
object vidrio {
  method esBrillante() {
    return true
  }
}
object lino {
  method esBrillante() {
    return false
  }
}
object madera {
  method esBrillante() {
    return false
  }
}
object cuero {
  method esBrillante() {
    return false
  }
}

//objetos
object remera {
  //una remera roja de lino, pesa 800 gramos.
  method color() {return rojo}
  method material() {return lino}
  method peso() {return 800}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
object pelota {
  //una pelota parda de cuero, pesa 1300 gramos.
  method color() {return pardo}
  method material() {return cuero}
  method peso() {return 1300}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
object biblioteca {
  //una biblioteca verde de madera, pesa 8000 gramos.
  method color() {return verde}
  method material() {return madera}
  method peso() {return 8000}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
object munieco {
  //un muñeco celeste de vidrio, de peso variable.
  var peso = 500
  method color() {return celeste}
  method material() {return vidrio}
  method peso(unPeso) {peso = unPeso}
  method peso() {return peso}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
object placa {
  //una placa de cobre, de peso y color variables.
  var peso = 3000
  var color = rojo
  method color(unColor) {color = unColor}
  method material() {return cobre}
  method peso(unPeso) {peso = unPeso}
  method color() {return color}
  method peso() {return peso}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
object arito {
  //un arito celeste de cobre, que pesa 180 gramos.
  method color() {return celeste}
  method material() {return cobre}
  method peso() {return 180}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
object banquito {
  //un banquito de madera que pesa 1700 gramos. Al principio es naranja, pero puede cambiar de color.
  var color = naranja
  method color(unColor) {color = unColor}
  method material() {return madera}
  method peso() {return 1700}
  method color() {return color}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
object cajita {
  //una cajita roja de cobre, que tiene un objeto adentro. 
  //Este objeto puede ser cualquiera de los definidos previamente, y puede cambiar.
  //El peso de la cajita es de 400 gramos más el peso de lo que tiene adentro.  
  var objetoAdentro = placa
  method objetoAdentro() {return objetoAdentro}
  method objetoAdentro(unObjeto) {objetoAdentro = unObjeto}
  method color() {return rojo}
  method material() {return cobre}
  method peso() {return 400 + objetoAdentro.peso()}
  method esDeColorFuerte() {return self.color().esfuerte()}
  method esMaterialBrillante() {return self.material().esBrillante()}
  method cuantoPesa() {return self.peso()}
}
