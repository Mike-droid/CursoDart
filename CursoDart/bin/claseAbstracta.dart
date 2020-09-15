main(List<String> args) {
  Chofer chofer = Chofer();
  chofer.id = 1;
  chofer.nombre = 'Roberto';
  chofer.salario = 100.0;
  chofer.calcularSalario();
  chofer.actividad();

  Cajero cajero = Cajero();
  cajero.id = 2;
  cajero.nombre = 'Pedro';
  cajero.salario = 100.0;
  cajero.calcularSalario();
  cajero.actividad();
}

abstract class Empleado {
  var id;
  var nombre;
  var salario;

  void calcularSalario() {
    print('El salario de $nombre es ${salario * 5.5}');
  }

  void actividad();
}

class Chofer extends Empleado {
  var vehiculo;

  void manejar() {
    print('Manejando...');
  }

  @override
  void actividad() {
    print('Pasear por la ciudad');
  }
}

class Cajero extends Empleado {
  var cajaAsignada;

  void cobra() {
    print('Cobrando...');
  }

  @override
  void actividad() {
    print('Cobrar a las personas');
  }

  @override
  void calcularSalario() {
    //super.calcularSalario(); este super significa que
    //hará lo mismo que el método de la clase padre
    print('El salario de $nombre es ${salario * 5.5 + 100}');
  }
}
