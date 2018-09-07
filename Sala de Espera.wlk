 object hospital {
 	var medicos = #{nick}
 	var salaDeEspera = []
 	
 	method anunciarseSalaDeEspera(paciente){
 		salaDeEspera.add(paciente)
 	}
 	method llamarMedicoYAtender(){ 		
 		self.medicoDisponible().atender(salaDeEspera.get(0))
 		salaDeEspera.remove(salaDeEspera.get(0))
 		
 	}
 	method medicoDisponible(){
 		return nick
 	}
 	method salaDeEspera(){
 		return salaDeEspera
 	}
 }

 
 object nick {
 	var locura = 0
	 	
 	method atender(paciente){
 		locura = locura + 1
 		paciente.recuperarSalud()
 	}
 	
 }
 
 object homero {
 	var rosquillas = 0
 	
 	method recuperarSalud(){
 		rosquillas = 0
 	}
 	
 	method comerRosquillas(cant){
 		rosquillas = rosquillas + cant
 		if(rosquillas >= 10)
 		self.irAlHospital()
 	}
	 
	 method irAlHospital(){
	 	hospital.anunciarseSalaDeEspera(self)
	 }
}

object abuelo {
	var bienestar = 5
	
	method salirACaminar(){
		bienestar = 0
		self.irAlHospital()
	}
	method recuperarSalud(){
 		bienestar = 5
 	}
 	method irAlHospital(){
	hospital.anunciarseSalaDeEspera(self)
	}
}

object maggie {
	var tienePaleta = fase
	
	method irAlHospital(){
	hospital.anunciarseSalaDeEspera(self)
	tienePaleta = true
	}
	method atender(){}
}
