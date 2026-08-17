object pepita {

    var energia = 100
    var cantidadCenasPepita = 0

    method volar(distancia){
        energia = energia -10 - distancia/10
}

    method descansar(){
        energia = energia + 10
}

    method comer(manzana){
        energia = energia + manzana.energiaQueAporta()
        cantidadCenasPepita = cantidadCenasPepita + 1
}


    method cansada(){
        return energia < 30
    }

   method cantidadDeCenas(){
        return cantidadCenasPepita
    }


}



object alpiste{

    
    method energiaQueAporta(){
        return 20
    }

}


object manzana {

  const base = 20
  var madurez = 1  

  method madurar() {
    madurez = madurez + 1
  }

  method energiaQueAporta() {
    return base * self._multiplicador()
  }

  method _multiplicador() { 
    return if (madurez < 3) madurez else 0

  }
  
}


object pepon {

 var energia = 30
 var cantidadCenasPepon = 0

 method comer(alimento){
    energia = energia + (alimento.energiaQueAporta() / 2)
    cantidadCenasPepon = cantidadCenasPepon + 1
 }
 
 method volar(distancia){
    energia = energia - 20 - (distancia * 2)
 }
 
 method cansado(){
    return energia < 34
 }
 
 method cantidadDeCenas(){

    return cantidadCenasPepon

 }

}


object rebeca{

    var ave = null

 method mascota(_ave){

     ave = _ave
    _ave.entrenador(self)

 }

 method alimentar(_ave){

    _ave.comer(alpiste)

 }

 method aveRebeca(){

    return ave

 }

}

// PREGUNTA 1: 
// Consultas: cansada() ; cantidadDeCenas() ; energiaQueAporta() ; aveRebeca()
// Ordenes: volar() ; descansar() ; comer() ; madurar() ; mascota() ; alimentar() ; 
//
//PREGUNTA 2: 
// Mensaje: <energiaQueAporta()> Emisores: Pepita y Pepon ; Tipo: Alimento; Implementado por: Manzana y Alpiste


