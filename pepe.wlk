object pepe {
    var categoria    = cadete
 	  var sueldoNeto   = categoria.sueldoNeto()
    var bonoRecibido = 0 

    method sueldoNeto() {
      return sueldoNeto
    }
    method categoria() {
      return categoria
    }
    method sueldo() {
      return sueldoNeto + bonoRecibido
    }
    method recibirCategoria(_categoria) {
      sueldoNeto = _categoria.sueldoNeto()
      categoria = _categoria
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

object bonoResultados {
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
  const demagogico = 500
  const nulo     = 0

  method normal(cantidadDeFaltas) {
    if (cantidadDeFaltas <= 1) {
        return normal - normal * 0.5 * cantidadDeFaltas
    }
    else{
        return 0
    }
  }
  method ajuste(cantidadDeFaltas) {
    if (cantidadDeFaltas == 0) {
      return ajuste
    }
    else {
      return 0
    }
  }
  method demagogico(sueldoNeto) {
    if (sueldoNeto < 18000) {
      return demagogico
    }
    else {
      return 300
    }
  }
  method nulo() {
    return nulo
  }
}
