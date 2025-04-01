import objetos.*

//Personas
object rosa {
    //Rosa: le gustan las cosas que pesan 2 kilos (o sea 2000 gramos) o menos.
    method leGusta(unObjeto) {
        return unObjeto.cuantoPesa() <= 2000
    }
}
object estefania {
    //Estefanía: le gustan las cosas de colores fuertes.
    method leGusta(unObjeto) {
        return unObjeto.esDeColorFuerte()
    }
}
object luisa {
    //Luisa: le gustan las cosas que sean de un material que brilla.
    method leGusta(unObjeto) {
        return unObjeto.esMaterialBrillante()
    }
}
object juan {
    //Juan: le gustan las cosas que, o bien son de un color que no es fuerte, o bien pesan entre 1200 y 1800 gramos.
    method leGusta(unObjeto) {
        return not unObjeto.esDeColorFuerte() || unObjeto.cuantoPesa().between (1200, 1800)
    }
}
