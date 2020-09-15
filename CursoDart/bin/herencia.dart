main(List<String> args) {
  Chofer chofer1 = Chofer();
  chofer1.id = 1;
  chofer1.nombre = 'Roberto';
  chofer1.salario = 100.50;
  chofer1.vehiculoAsignado = 'de trabajo';

  chofer1.calcularSalario();

  Vendedor vendedor1 = Vendedor();
  vendedor1.id = 2;
  vendedor1.nombre = 'Pedro';
  vendedor1.salario = 120.0;
  vendedor1.venderACliente();
  vendedor1.calcularSalario();
}

class Empleado {
  var id;
  var nombre;
  double salario;

  void calcularSalario() {
    print('El trabajador $nombre tiene un salario de ${salario * 5.5}');
  }
}

class Chofer extends Empleado {
  String vehiculoAsignado;

  void manejarVehiculo() {
    print('Esta persona está manejando...');
  }
}

class Vendedor extends Empleado {
  String idCliente;

  void venderACliente() {
    print('Vender');
  }
}
