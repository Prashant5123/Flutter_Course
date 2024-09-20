//WAP generates the first n numbers in the Fibonacci series.

import 'dart:io';

void main(){
  print("Enter a number.");
  int num=int.parse(stdin.readLineSync()!);
  int num1=0;
  int num2=1;

  if(num>=1){
    print(num1);
  }
  if(num>=2){
    print(num2);
  }else{
    print("Enter the valid number");
  }

  for(int i=1;i<=num-2;i++){
    int temp=num2;
    num2=num1+temp;
    num1=temp;
    print(num2);
  }
}