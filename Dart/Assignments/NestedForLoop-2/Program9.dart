import "dart:io";

void main(){

  print("Enter no. of row");
  int row=int.parse(stdin.readLineSync()!);
  
  for(int i=1;i<=row;i++){
    int num1=row;
    int num2=i;
    for(int j=1;j<=i;j++){
      stdout.write("${num2} ");
      num2+=num1;
      num1--;
    }
    print("");
  }
}