main(List<String> args) {
  suma();
  sumaParametros(5, 9);
  int resultado = sumaConReturn(4, 10);
  print(resultado);
}

void suma() {
  print(3 + 5);
}

void sumaParametros(int a, int b) {
  print(a + b);
}

int sumaConReturn(int a, int b) {
  return a + b;
}
