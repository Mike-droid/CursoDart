main(List<String> args) {
  var edad = 19;
  if (edad >= 18 && edad <= 29) {
    print('Eres un joven adulto');
  } else if (edad >= 30) {
    print('Eres un adulto maduro');
  } else if (edad <= 17) {
    print('Menor de edad');
  }

  //!Operador ternario
  var acceso = edad >= 18 ? 'Adelante' : 'No tienes acceso';
  print(acceso);

  var nombre = 'Miguel'; //!Si no le asignamos un valor, tomará el de '??'
  print(nombre ?? 'Invitado');
}
