object tom {
    var energia = 50
  method comer(unRaton) {
    energia = 1000.min(energia + unRaton.peso() +12)
  }
  method correr(unaDistancia) {
    energia = 0.max(energia - unaDistancia / 2)
  }
  method velocidadMaxima() {
    return 5 + energia /10
  }
  method energia() {
    return energia
  }
  method puedeCazarRatonA(unaDistancia) {
    return  energia >= unaDistancia / 2
  }
  method cazarRatonA(unRaton,unaDistancia) {
    if(self.puedeCazarRatonA(unaDistancia)){
        self.correr(unaDistancia)
        self.comer(unRaton)
    }
  }  

}

object jerry {
  var edad = 2
  method peso() {
    return edad*20
  }
  method cumplirAños() {
    edad = edad +1
  }

}

object nibbles {
  method peso() {
    return 35
  } 
}

object perez {
  method peso() {
    return 45
  } 
}