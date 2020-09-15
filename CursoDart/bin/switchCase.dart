main(List<String> args) {
  var opcion = 10;
  switch (opcion) {
    case 1:
      print('Retornamos valor $opcion');
      break;
    case 2:
      print('Retornamos valor $opcion');
      break;
    case 3:
      print('Retornamos valor $opcion');
      continue continuaAqui;

    continuaAqui:
    case 4:
      print('Hola xd');
      break;
    default:
      throw ('Esto pasa en caso de un error :o'); //!Y se imprime como un error
  }
}
