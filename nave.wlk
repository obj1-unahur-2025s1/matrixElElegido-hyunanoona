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
        return(
            pasajeros.max{pasajero => pasajero.vitalidad()}
        )
    }
    method pasajeroDeMenorVitalidad(){
        return(
            pasajeros.min{pasajero => pasajero.vitalidad()}
        )
    }   
    method estaEquilibrada(){
        return(
            self.pasajeroDeMayorVitalidad().vitalidad() < self.pasajeroDeMenorVitalidad().vitalidad() * 2
        )
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

