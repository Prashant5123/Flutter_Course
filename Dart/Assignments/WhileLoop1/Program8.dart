// Write a program to print the product of odd digits between 10 to 1
import "dart:io";
void main(){
  print("Enter thr no.");
  int num=int.parse(stdin.readLineSync()!);
  int product=1;
  while(num>=1){
    if(num%2==1){
      product=product*num;
    }
    num--;
  }

  print(product);
}