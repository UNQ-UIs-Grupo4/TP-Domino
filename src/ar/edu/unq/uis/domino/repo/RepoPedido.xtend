package ar.edu.unq.uis.domino.repo

import ar.edu.unq.uis.domino.model.Pedido
import org.uqbar.commons.model.CollectionBasedRepo
import ar.edu.unq.uis.domino.model.Cliente
import ar.edu.unq.uis.domino.model.FormaDeEnvio

class RepoPedido extends CollectionBasedRepo<Pedido> {
	
	def Pedido createPedido(Cliente cliente, FormaDeEnvio forma, String nombre) {
		val pedido = new Pedido(cliente, forma, nombre)
		this.create(pedido)
		pedido
	}
	
	override createExample() {
		
	}
	
	override getEntityType() {
		
	}
	

	override protected getCriterio(Pedido example) {
	}
	
}