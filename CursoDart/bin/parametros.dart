//!Parámetros requeridos, opcionales, posicionados, nombrados y por defecto

main(List<String> args) {
  parametrosRequeridos(5, 6);
  parametrosOpcionales(4, 8);
  parametrosOpNombrado(5, b: 7);
  parametrosOpDefecto(6);
}

void parametrosRequeridos(int a, int b) {
  print('Imprime param1 $a');
  print('Imprime param2 $b');
}

//!El parámetro entre corchetes es opcional
void parametrosOpcionales(int a, [int b]) {
  print('Imprime param1 $a');
  print('Imprime param2 $b');
}

//!El parámetro entre llaves es opcional nombrado, quiere decir
//! que al momento de llamar a la función, no importa el orden de los parámetros,
//! pero sí importa el nombre que uses para llamarlos, tiene que ser igual que
//! en la declaración
void parametrosOpNombrado(int a, {int b}) {
  print('Imprime param1 $a');
  print('Imprime param2 $b');
}

//!El parámetro entre llaves tiene un valor por defecto
void parametrosOpDefecto(int a, {int b = 6}) {
  print('Imprime param1 $a');
  print('Imprime param2 $b');
}
