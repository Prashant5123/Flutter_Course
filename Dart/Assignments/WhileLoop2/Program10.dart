//Write a program to check whether the number is a Palindrome number or not. 


import 'dart:io';

void main(){
  print("Enter the number:");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int remainder;
  int reverse=0;
  while(temp>0){
    remainder=temp%10;
    temp=temp~/10;
    reverse=reverse*10+remainder;
  }
  if(num==reverse){
    print("$num is a Pallindrome number");
  }else{
     print("$num is not a Pallindrome number");
  }

}