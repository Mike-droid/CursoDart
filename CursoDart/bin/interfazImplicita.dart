main(List<String> args) {
  Chofer chofer = Chofer();
  chofer.id = 1;
  chofer.nombre = 'Roberto';
  chofer.salario = 300.0;
  chofer.calcularSalario();
  chofer.buenaConducta();

  /******************************************************/

  Cajero cajero = Cajero();
  cajero.id = 1;
  cajero.nombre = 'Adrian';
  cajero.salario = 340.50;
  cajero.calcularSalario();
  cajero.buenaConducta();
}

class Empleado {
  var id;
  var nombre;
  var salario;

  void calcularSalario() {
    print('Salario de $nombre es ${salario * 5.5}');
  }
}

class Conducta extends Empleado {
  void buenaConducta() {
    print('El empleado $nombre se comportó correctamente');
  }
}

class Chofer implements Empleado, Conducta {
  @override
  var id;

  @override
  var nombre;

  @override
  var salario;

  @override
  void buenaConducta() {
    print('Salario de $nombre es ${salario * 5.5}');
  }

  @override
  void calcularSalario() {
    print('El empleado $nombre se comportó incorrectamente');
  }
}

class Cajero implements Empleado, Conducta {
  @override
  var id;

  @override
  var nombre;

  @override
  var salario;

  @override
  void buenaConducta() {
    print('Salario de $nombre es ${salario * 5.5}');
  }

  @override
  void calcularSalario() {
    print('El empleado $nombre se comportó correctamente');
  }
}
