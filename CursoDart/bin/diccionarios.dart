main(List<String> args) {
  Map<int, dynamic> map = {1: 'Rojo', 2: 'Azul', 3: 'Verde', 4: 4.5};

  print('Mapa o diccionario: $map');

  map[5] = true;

  print('Mapara con true asignado $map');

  map.remove(2);
  print('Se eliminó el color azul $map');

  print('¿Está vacío?');
  print(map.isEmpty);
  print('Longitud: ');
  print(map.length);
}
