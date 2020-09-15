import 'empleado.dart';

main(List<String> args) {
  Empleado emp = Empleado();
  emp.horasLaboradas = 35;

  print('El trabajador laboro ${emp.horasLaboradas} días esta semana');
}
