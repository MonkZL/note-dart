void noteLoop() {
  //TODO for
  for (int i = 0; i < 10; i++) {
    print('i:$i');
  }

  print('----------');

  //TODO while
  var i = 0;
  while (i < 11) {
    print('i:$i');
    i++;
  }

  print('----------');

  //TODO do while
  do {
    print('i:$i');
    i++;
  } while (i < 21);

  print('----------');

  //TODO continue
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) continue;
    print('i:$i');
  }

  print('----------');

  //TODO break
  for (int i = 0; i < 10; i++) {
    if (i % 2 != 0) break;
    print('i:$i');
  }
}
