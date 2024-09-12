import "dart:io";

void main(){

  print("Enter no. of row");
  int row=int.parse(stdin.readLineSync()!);
  
  for(int i=1;i<=row;i++){
    int num=i;
    for(int j=1;j<=i;j++){
      stdout.write("${num} ");
      num+=row;
    }
    print("");
  }
}