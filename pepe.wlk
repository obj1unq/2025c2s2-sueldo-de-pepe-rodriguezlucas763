object pepe {
	var sueldoNeto   = 0
    var bonoRecibido = 0

    method sueldo() {
      return sueldoNeto + bonoRecibido
    }
    method recibirCategoria(categoria) {
      sueldoNeto = categoria.sueldoNeto()
    }
    method recibirBono(bonoPresentismo, bonoResultados) {
      bonoRecibido = bonoPresentismo + bonoResultados
    }
}

object gerente {
  const sueldoNeto = 15000

  method sueldoNeto() = sueldoNeto
}

object cadete {
  const sueldoNeto = 20000

  method sueldoNeto() = sueldoNeto
}

object bonoResutados {
  const montoFijo  = 800
  const nulo       = 0

  method porcentaje(sueldoNeto) {
    return sueldoNeto * 0.1
  }
  method montoFijo() {
    return montoFijo
  }
  method nulo() {
    return nulo
  }
}

object bonoPresentismo {
  const normal   = 2000
  const ajuste   = 100
  var demagogico = 500
  const nulo     = 0

  method normal(cantidadDeFaltas) {
    if (cantidadDeFaltas <= 1) {
        return normal - normal * 0.5 *cantidadDeFaltas
    }
    else{
        return 0
    }
  }
  
}
