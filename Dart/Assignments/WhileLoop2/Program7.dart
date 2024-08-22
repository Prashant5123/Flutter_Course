// Write a program to count the Odd digits of the given number.


import 'dart:io';

void main(){
  print("Enter the number:");
  int num=int.parse(stdin.readLineSync()!);
  int remainder;
  int count=0;
  while(num>0){
    remainder=num%10;
    num=num~/10;
    if(remainder%2==1){
     count++;
    }
   
  }
  print("Count of odd digit is $count");
}