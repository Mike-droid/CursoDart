main(List<String> args) {
  //Colecciones, List y Set

  //! Listas
  List<String> lista = ['Negro', 'Rojo'];

  lista.add('Rosa');
  print('Lista con rosa:  $lista');
  lista.removeLast();
  print('Lista sin rosa: $lista');

  List<String> auxiliar = ['Azul', 'Verde'];

  lista.addAll(auxiliar);
  print('Lista con ambas listas: $lista');

  lista.removeAt(2);
  print('Lista con el índice #2 removido $lista');

  //! Set
  Set set = Set.from(['Miguel', 'Ángel', 'José']);
  print('Set: $set');

  set.add('Erika'); //! set no permite elementos repetidos
  print('Set con Erika: $set');

  //!A diferencia de las listas, set con el método remove
  //! tiene que manejar el nombre del elemento, no funciona con índices
  set.remove('José');
  print('Set sin José porque se eliminó $set');
}
