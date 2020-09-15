main(List<String> args) {
  funcionArrow(3, 5);
  var result = funcionArrowRetorno(2, 8);
  print('El resultado es $result');

  List list = ['Rojo', 'Azul', 'Verde'];

  list.forEach((color) {
    print(color);
  });

  list.forEach((element) {
    print('${list.indexOf(element)}: $element');
  });

  list.forEach((element) {
    if (element == 'Rojo') {
      print(element);
    }
  });
}

void funcionArrow(int a, int b) => print('El resultado es: ${a + b}');

int funcionArrowRetorno(int a, int b) => a + b;
