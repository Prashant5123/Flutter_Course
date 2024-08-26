import 'dart:io';

void main() {
  print("Enter the no. of rows");
  int row = int.parse(stdin.readLineSync()!);
 
  for (int i = 1; i <= row; i++) {
    int temp = row;
    int num = 1;
    for (int j = 1; j <= row; j++) {
      if (i % 2 == 1) {
        stdout.write("$num\t");
      } else {
        if (j == 1) {
          stdout.write("$temp\t");
        } else if(j==row) {
          stdout.write("$temp\t");
        }else{
           stdout.write("$num\t");
        }
      }
      num++;
      temp--;
    }
     print("");
  }
}
