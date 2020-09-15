main(List<String> args) {
  print("Hola mundo en Dart");

  //Variables, Números, Strings y booleans
  int entero = 10;
  double decimal = 10.23;
  String cadena = "Hola";
  bool boleano = true;
  dynamic cosita = false;
  cosita = 1.0; //!dynamic puede cambiar de tipo de dato

  print("El valor del entero es $entero, el de decimal es $decimal");
  print("La cadena dice $cadena" + " y esta es concatenación");
  print('''
  Triple
  comilla
  simple
  $boleano
  ''');
  print(r"esto es raw #%$#$#jkfashfkjs'''''\\\nfa");
  print("cosita vale $cosita");
}
