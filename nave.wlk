import matrix.*

object nave{
    const pasajeros = #{neo, morfeo, trinity}
    
    method cantidadDePasajeros() = pasajeros.size()

    method pasajeroDeMayorVitalidad() = pasajeros.max{pasajero => pasajero.vitalidad()}
        
    method pasajeroDeMenorVitalidad() = pasajeros.min{pasajero => pasajero.vitalidad()}   
    
    method estaEquilibrada(){
        return
            self.pasajeroDeMayorVitalidad().vitalidad() < self.pasajeroDeMenorVitalidad().vitalidad() * 2
    }
    
    method estaElELegido() = pasajeros.any{pasajero => pasajero.esElElegido()}

    method chocar(){ 
        pasajeros.forEach{pasajero => pasajero.saltar()}
        pasajeros.clear()
    }

    method acelerar() {
        pasajeros.filter{pasajero => not pasajero.esElElegido()}.forEach{pasajero => pasajero.saltar()}
        pasajeros.remove{neo}
    }
}

