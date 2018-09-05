/** Para poder entregar el paquete el servicio tiene que estar pago y 
el mensajero debe poder llegar al destino*/

object servicio {
	var servicioPago

	method realizarServicio(mensajero,destino){
		self.estaPago()
		destino.puedePasar(mensajero)
	}
	method estaPago(){
	return servicioPago
	}
	method pagarServicio(){
	servicioPago = true
	}
}

object roberto {
	var transporte 
	var peso  
		
	method cuantoPeso(){
		peso = peso + transporte.damePeso()
		return peso		
	}
	method viajaEn(unTransporte){
		transporte = unTransporte		
	}
	method miTransporteEs(){
		return transporte
	}
	method puedoLlamar(){
		return false
	}
	method miPesoEs(kg){
		peso = kg
	}
}


object cuckNorris {
	var peso = 900
	var puedeLlamar = false
	
	method cuantoPeso(){
		return peso
	}
	method llevarPulgarAlOidoYMeniqueALaBoca(){
	puedeLlamar = true
	}
	method puedoLlamar(){
		return puedeLlamar
	}
}

object neo {
	var peso = 0
	var credito
	
	method cuantoPeso(){
		return peso
	}
	method puedoLlamar(){
		return self.miCredito() > 0 
	} 
	method miCredito(){
		return credito
	}
	method cargarCredito(cant){
		credito = cant
	}
}

object brooklyn {
	
	method puedePasar (persona){
		return 1000 > persona.cuantoPeso()
		
	}
}

object laMatrix {
	
	method puedeHacerUnaLlamada (persona){
		return persona.puedoLlamar()
	}
}

object camion {
	var peso
		
	method peso(acoplados){
		peso = acoplados*500
	}
	method damePeso(){
		return peso
	}
}	

object bicicleta {
	var peso = 0
	
	method damePeso(){
		return peso
	}
}
