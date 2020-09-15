class Empleado {
  String nombre;
  double _horas; //!variable privada

/*   void set horasLaboradas(double horas) {
    _horas = horas / 8;
  }

  double get horasLaboradas {
    return _horas;
  } */

  void set horasLaboradas(double horas) => _horas = horas / 8;

  double get horasLaboradas => _horas;
}
