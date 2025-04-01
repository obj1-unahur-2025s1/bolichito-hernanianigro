import objetos.*
import personas.*

//bolichito
object bolichito {
    //vende dos objetos: uno está en la vidriera, otro está en el mostrador. Estos objetos van cambiando con el tiempo.
    var objetoEnVidriera = biblioteca
    var objetoEnMostrador = pelota
    method objetoEnVidriera(unObjetoEnVidriera) {objetoEnVidriera = unObjetoEnVidriera}
    method objetoEnMostrador(unObjetoEnMostrador) {objetoEnMostrador = unObjetoEnMostrador}
    method objetoEnVidriera() {return objetoEnVidriera}
    method objetoEnMostrador() {return objetoEnMostrador}
    //El bolichito debe poder responder si es brillante o no. Eso depende de que los 2 objetos que tiene (en el mostrador y en la vidriera) sean ambos brillantes. 
    method esBolichitoBrillante() {
        return objetoEnVidriera.esBrillante() && objetoEnMostrador.esBrillante()
    }
    //Otra cosa que nos debe poder decir es si es monocromático, lo cual será cierto si los 2 objetos que exhibe son del mismo color.
    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }
    //También nos interesa saber si el bolichito está equilibrado, lo cual será verdadero si el objeto del mostrador pesa más que el de la vidriera.
    method estaEquilibrado() {
        return objetoEnVidriera.cuantoPesa() < objetoEnMostrador.cuantoPesa()
    }
    //Debemos poder preguntarle al bolichito si tiene algún objeto exhibido de un determinado color.
    method tieneObjetoDeColor(unColor) {
        return objetoEnVidriera.color() == unColor || objetoEnMostrador.color() == unColor
    }
    //Debemos poder preguntarle al bolichito si puede mejorar, lo cual será cierto si está desequilibrado o es monocromático.
    method puedeMejorar() {
        return not self.estaEquilibrado() || self.esMonocromatico()
    }
    method tieneObjetoDeColor_YPuedeMejorar(unColor) {
        return self.tieneObjetoDeColor(unColor) && self.puedeMejorar()
    }
    //tenemos que poder preguntarle si puede ofrecerle algo a una persona determinada que se pasa como argumento, lo cual será verdadero 
    //cuando alguno de los objetos exhibidos le gusta a esa persona. 
    method puedeOfrecerAlgoA(unaPersona) {
        return unaPersona.leGusta(objetoEnVidriera) || unaPersona.leGusta(objetoEnMostrador)
    }
}