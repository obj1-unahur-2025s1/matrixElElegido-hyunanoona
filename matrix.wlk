import nave.*

object neo{
    var energia = 100
    method saltar(){
        energia = energia*0.5
    }
    method vitalidad() = energia*0.1
        
    method esElElegido() = true
}

object morfeo{
    var vitalidad = 8
    var estaDescansado = true
    method saltar(){
        estaDescansado = not estaDescansado
        vitalidad = (vitalidad -1).max(0)
    }
    method vitalidad() = vitalidad

    method esElElegido() = false
}

object trinity{
    method vitalidad() = 0
    method saltar(){}
    method esElElegido() = false
}
