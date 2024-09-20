//WAP to check whether the given number is a Pallindrome number or not.

import 'dart:io';

void main(){
  print("Enter a number.");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int reverse=0;
  while(temp>0){
    int remainder=temp % 10;
    temp=temp~/10;
    reverse=reverse*10+remainder;
  }
  if(reverse==num){
    print("$num is a Pallindrome Number.");
  }
  else{
     print("$num is not a Pallindrome Number.");
  }
}