//  Write a program to calculate the factorial of the given number.

import 'dart:io';

void main(){
  print("Enter the number:");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int factorial=1;
  while(temp>=1){
    factorial=temp*factorial;
    temp--;
  }
  print("Factorial of $num is $factorial");
  
}