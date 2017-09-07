package ar.edu.unq.uis.domino;
import org.junit.Test

import static org.junit.Assert.*
import org.junit.Before

class PedidoTest {
	
    @Before
    def void setUp() {
    	
	
    }

	@Test
	def dadoUnPedido_SeCalculaElCostoFinal() {
		val margherita = new Pizza("Margherita", 10.0)
		val carla = new Cliente("Carla", "carla@gmail.com")
		
		val pedido = new Pedido(carla, new RetiraPorElLocal())
		val plato = new Plato(margherita, Tamanio.GRANDE)
		
		pedido.agregarPedido(plato)
		
		assertEquals(pedido.getMonto(), 10.0, 0)
		
	}
	
	@Test
	def dadoUnPedidoDePorcion_SeCalculaElCostoFinalSegunTamanio() {
		val margherita = new Pizza("Margherita", 10.0)
		val carla = new Cliente("Carla", "carla@gmail.com")
		
		val pedido = new Pedido(carla, new RetiraPorElLocal())
		val plato = new Plato(margherita, Tamanio.PORCION)
		
		pedido.agregarPedido(plato)
		
		assertEquals(pedido.getMonto(), 1.25, 0)
		
	}
}
