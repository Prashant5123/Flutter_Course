import "dart:io";

void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  int num=0;
  int increment=2;
  for(int i=1;i<=row;i++){
    for(int j=1;j<=row;j++){
        stdout.write("$num \t");
        num+=increment;
        increment+=2;
    }
    print("");
  }
}