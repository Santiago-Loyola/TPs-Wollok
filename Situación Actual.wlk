object paro {
	method impacto(){
		return -10
	}
}

object gobierno {
 	var	op = 100
 	method modificarOP(unImpacto){
 		op = op+unImpacto
 	}
	

}

object universidad {
	
	var estudiantes = 100
	var docentes = 20
	var presupuesto = 500
	
	var medidaPreferida = paro 
	
	method modificarPresupuesto(monto){
		presupuesto=presupuesto+monto
	}
	
	method medidaPreferida (medida) {
		medidaPreferida = medida
	}

	method aplicarMedida(){
		
		gobierno.modificarOP(medidaPreferida.impacto())
	}
}
