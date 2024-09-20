//Wap to check whether the given number is Harshad/ Niven number or not.

import 'dart:io';

void main(){
  print("Enter a number.");
  int num=int.parse(stdin.readLineSync()!);
  int sum=0;
  int temp=num;

  while(temp>0){
    int remainder=temp%10;
    temp=temp~/10;
    sum=sum+remainder;
  }
  if(num%sum==0){
    print("$num is a Harshad Number.");
  }
  else{
     print("$num is not a Harshad Number.");
  }
}