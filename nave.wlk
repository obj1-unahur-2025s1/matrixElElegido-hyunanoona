import matrix.*

object nave{
    const pasajeros = [neo, morfeo, trinity]
    method bajarDeLaNave(unPasajero){
        if(pasajeros.contains(unPasajero)){
            unPasajero.saltar()
            pasajeros.remove(unPasajero)
        }
    }
    method subirALaNave(unPasajero){
        if(not pasajeros.contains(unPasajero)){
            unPasajero.saltar()
            pasajeros.add(unPasajero)
        }
    }
    method cantidadDePasajeros() {
      return(pasajeros)
    }
    method pasajeroDeMayorVitalidad(){
        var mayorVida = pasajeros.first()
        pasajeros.forEach{pasajero =>
            if(pasajero.vitalidad() > mayorVida.vitalidad()){
                mayorVida = pasajero
            }
        }
        return(mayorVida)
    }
    method estaEquilibrada(){
        var pasajeroConMasVitalidad = self.pasajeroDeMayorVitalidad()
        var estaEquilibrado = true
            pasajeros.forEach{ pasajero =>
        if (pasajeroConMasVitalidad.vitalidad() > pasajero.vitalidad()*2) {
            estaEquilibrado = false
        }
        pasajeroConMasVitalidad = pasajero
        }
        return(estaEquilibrado)
    }
    method estaElELegido(){
        return(
            pasajeros.contains(neo)
        )
    }
    method chocar(){
        pasajeros.forEach{pasajero => 
            self.bajarDeLaNave(pasajero)}

    }
    method acelerar() {
      pasajeros.forEach{pasajero =>
        if(not pasajero.esElElegido()){
            pasajero.saltar()
        }
      }
    }
}

