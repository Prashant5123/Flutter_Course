// Write a program to print the square of even digits of the given number.


import 'dart:io';

void main(){
  print("Enter the number:");
  int num=int.parse(stdin.readLineSync()!);
  int remainder;
  int sqaure=0;
  while(num>0){
    remainder=num%10;
    num=num~/10;
    if(remainder%2==0){
     sqaure=remainder*remainder;
     print("$sqaure ");
    }
   
  }

}