import nave.*

object neo{
    var energia = 100
    method saltar(){
        energia = energia*0.5
    }
    method vitalidad(){
        return(
            energia*0.1
        )
    }
    method esElElegido(){
        return(true)
    }
}

object morfeo{
    var vitalidad = 8
    var estaDescansado = true
    method vitalidad(){
        return(
            vitalidad
        )
    }
    method saltar(){
        if(self.tieneVitalidad()){
            self.disminuirVitalidad()
        }
    }
    method tieneVitalidad(){
        return(
            vitalidad > 1
        )
    }
    method disminuirVitalidad(){
        if(estaDescansado){
            estaDescansado = false
        }
        else{
            estaDescansado = true
        }
        vitalidad = vitalidad - 1
    }
    method esElElegido(){
        return(false)
    }
}

object trinity{
    method vitalidad(){
        return(
            0
        )
    }
    method saltar(){}
    method esElElegido(){
        return(
            false
        )
    }
}
