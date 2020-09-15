main(List<String> args) {
  int i = 0;
  while (i < 10) {
    print('Valor actual $i');
    i++;
  }

  print('Separación');

  do {
    print('Valor actual $i');
    i++;
  } while (i < 10);
}
