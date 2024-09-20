import 'dart:io';

void main() {
  print("Enter number of rows:");
  int row = int.parse(stdin.readLineSync()!);

  int num = 1;

  int check() {
    
      int temp1 = num;
      int sum = 0;

      while (temp1 > 0) {
        int remainder = temp1 % 10;
        temp1 = temp1 ~/ 10;
        sum = sum + remainder;
      }

      if (num % sum==0) {
        return num++;
      } else {
        num++;
        return check();
      }
    
  }

  void answer() {
    for (int i = 1; i <= row; i++) {
      for (int j = 1; j <= row; j++) {
        stdout.write("${check()} \t");
      }
      print("");
    }
  }

  answer();
}
