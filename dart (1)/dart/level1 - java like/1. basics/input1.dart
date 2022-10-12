import 'dart:io';

void input1() {
    print("Game 1 : enter q to quit");
    // print is stdout.write()
    while (true) {
      stdout.write('Rock, paper or scissors? (r/p/s)\n');
      final input = stdin.readLineSync(); // stdin.readLineSync(encoding: utf8);
      if (input == 'r' || input == 'p' || input == 's') {
        stdout.write(input); 
      } else if (input == 'q') {
        break;
      } else {
        print('Invalid input');
      }
    }
}

void input2() {
    print("Game 2 : enter q to quit");
    String? input;
    do {
      stdout.write('Rock, paper or scissors? (r/p/s)');
      input = stdin.readLineSync();
      if (input == 'r' || input == 'p' || input == 's') {
        print(input); 
      } else {
        print('Invalid input');
      }
    } while (input != 'q');
}

void main()
{
    input1();
    input2();
}