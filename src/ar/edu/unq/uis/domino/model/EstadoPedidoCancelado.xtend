package ar.edu.unq.uis.domino.model

class EstadoPedidoCancelado extends Estado{
	
	
	new(String nombre) {
		super(nombre)
	}
	
	def Estado cancelar() {
		throw new NoPuedeCambiarEstadoException("El pedido fue cancelado. Por favor, realice un nuevo pedido")
	}
	
	
}

