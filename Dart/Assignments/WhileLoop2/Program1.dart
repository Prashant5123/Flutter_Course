// Write a program to print the sum of all even numbers and the multiplication of odd numbers between 1 to 10.

void main(){
  int start=1;
  int end=10;

  int sum=0;
  int product=1; 
  while(start<=end){
    if(start%2==0){
      sum=sum+start;
    }else{
      product=product*start;
    }
    start++;
  } 
  print("sum of even numbers between 1 to 10=$sum");
  print("Multiplication of odd numbers between 1 to 10=$product");
}