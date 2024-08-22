// Write a program to count the digits of the given number.

import 'dart:io';

void main(){
  print("Enter the number:");
  int num=int.parse(stdin.readLineSync()!);
  int count=0;
  while(num>0){
    num=num~/10;
    count++;
  }
  print("Count of digit is $count");
}