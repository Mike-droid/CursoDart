main(List<String> args) {
  Empleado emp = Empleado(1, 'Roberto');
  emp.trabajar();

  Empleado emp2 = Empleado.trabajo(2, 'Fernando', false);
  emp2.cumplioHorario()
      ? print('${emp2.nombre} Cumplió horario')
      : print('${emp2.nombre} No cumplió horario');
}

class Empleado {
  var id;
  var nombre;
  var trabajo;

/*   Empleado() {
    print('Soy el método constructor');
  } */

  Empleado(this.id, this.nombre); //!Otro método constructor

  Empleado.trabajo(
      this.id, this.nombre, this.trabajo); //!Otro método constructor

  bool cumplioHorario() {
    return trabajo;
  }

  void trabajar() {
    print('El empleado $nombre realizó su trabajo');
  }
}
