main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    if (i.isEven) {
      print(i);
    }
  }

  List<String> colores = ['Rojo', 'Azul', 'Verde'];

  for (var color in colores) {
    print(color);
  }

  print('');

  for (var i = 0; i < colores.length; i++) {
    print(colores[i]);
  }

  print('');

  colores.forEach((color) {
    print(color);
  });

  print('');

  colores.forEach((color) => print(color));
}
