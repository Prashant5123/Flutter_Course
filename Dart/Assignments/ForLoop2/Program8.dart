// Write a program to print the sum of all the numbers in the table of 12.

void main(){
  int sum=0;
  for(int i=1;i<=10;i++){
    int table=i*12;
    sum=sum+table;
  }
  print(sum);
}