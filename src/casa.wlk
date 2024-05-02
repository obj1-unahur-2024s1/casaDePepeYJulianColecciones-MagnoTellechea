import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	const cosas = [heladera]
	const verificarSiEsComida = {cosa => cosa.esComida()}
	const verElPrecioDeLasCosas = {cosa => cosa.precio()}
	const verificarSiEsElectrodomestico = {cosa => cosa.esElectrodomestico()}
	
	method comprar(cosa) = cosas.add(cosa)
	method cantidadDeCosasCompradas() = cosas.size()
	method tieneComida() = cosas.any(verificarSiEsComida)       //devuelve true o false
	method vieneDeEquiparse(){
		return (cosas.last().esElectrodomestico() || cosas.last().precio() > 50000)
	}
	method esDerrochona(){
		const precioDeLasCosas = cosas.map(verElPrecioDeLasCosas)
		return (precioDeLasCosas.sum() > 90000)
	}
	method compraMasCara(){
		const precioDeLasCosas = cosas.map(verElPrecioDeLasCosas)
		return (precioDeLasCosas.max())
	}
	method electrodomesticosComprados() = cosas.filter(verificarSiEsElectrodomestico)
	method malaEpoca() = cosas.all(verificarSiEsComida)
	method queFaltaComprar(lista){					//a la lista le voy a pasar heladera y tiraDeAsado, en cosas va a estar heladera
		lista.filter(cosa => )								//por lo tanto tiene que devolver tiraDeAsado la lista filtrada.
		
	}
	
}
