//Write a program to reverse the given number.


import 'dart:io';

void main(){
  print("Enter the number:");
  int num=int.parse(stdin.readLineSync()!);
  int remainder;
  int sqaure=0;
  int reverse=0;
  while(num>0){
    remainder=num%10;
    num=num~/10;
    reverse=reverse*10+remainder;
  }
  print(reverse);

}