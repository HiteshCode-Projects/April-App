void main() {
  //Loop - Doing The Same Task Again and Again
  //Print Number 1 to 10
  //print(1)
  //print(2)
  //print(3)

  //   for(staring point; ending/condtional point; ++ / --)

  //Print 1 to 10

  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  //print 10 to 1
  for (int i = 10; i >= 1; i--) {
    print(i);
  }

  //while loop - Entry Controlled Loop
  //when Condition is True Loops Start - When Condition becomes False

  // while(condtion)

  int count = 1;

  while (count <= 5) {
    print("Hello guys");
    count++;
  }

  //Do - While Loop - Exit Controlled Loop
  //It will excute atleast for 1 time even if condition is False

  int number = 7;

  do {
    print("Hello While Loop");
  } while (number < 5);

  //break - STOP
  for (int y = 1; y <= 5; y++) {
    if (y == 3) {
      print("Item found");
      break;
    }

    print("Checking item $y");
  }

  //conitinue - Skip and Go ahead.

  for (int x = 1; x <= 5; x++) {
    if (x == 3) {
      continue;
    }

    print("Showing Item $x");
  }
}
