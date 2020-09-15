//!A partir de la versión 2.1 de Dart, new ya no hace falta ser escrita
main(List<String> args) {
  Empleado emp = Empleado();
  emp.id = 1;
  emp.nombre = 'Miguel';

  if (emp.cumplioHorario()) {
    emp.trabajar();
  }

  //*Otra forma de declararlo/
  Empleado emp2 = Empleado()
    ..id = 2
    ..nombre = 'Ángel';

  emp2.cumplioHorario()
      ? emp2.trabajar()
      : print('${emp2.nombre} no se presentó a trabajar hoy');
}

class Empleado {
  var id;
  var nombre;

  bool cumplioHorario() {
    return true;
  }

  void trabajar() {
    print('El empleado $nombre realizó su trabajo');
  }
}
