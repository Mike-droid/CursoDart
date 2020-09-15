main(List<String> args) {
  for (var i = 0; i < 4; i++) {
    for (var j = 0; j < 4; j++) {
      if (i == 1 && j == 1) {
        break;
      }
      print('$i $j');
    }
  }

  for (var i = 0; i < 4; i++) {
    for (var j = 0; j < 4; j++) {
      if (i == 1 && j == 3) {
        continue;
      }
      print('$i $j');
    }
  }
}
