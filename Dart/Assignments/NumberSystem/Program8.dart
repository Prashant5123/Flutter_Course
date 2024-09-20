import 'dart:io';

void main() {
  print("Enter a number:");
  String num1 = stdin.readLineSync()!;
  
  if (num1.startsWith('0')) {
    print("$num1 is not a Duck Number.");
  } else {
    bool isDuck = false;

    for (int i = 0; i < num1.length; i++) {
      if (num1[i] == '0') {
        isDuck = true;
        break;
      }
    }

    if (isDuck) {
      print("$num1 is a Duck Number.");
    } else {
      print("$num1 is not a Duck Number.");
    }
  }
}
