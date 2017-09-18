package ar.edu.unq.uis.domino.model

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.Entity
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Distribucion extends Entity {
	
	public String nombre;
	
	new(String nombre){
		this.nombre = nombre;
	}
	
}