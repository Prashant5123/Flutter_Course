import 'dart:io';
void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  int num=row*row;
  for(int i=1;i<=row;i++){
    for(int j=1;j<=row;j++){
      stdout.write("${num--}\t");
    }
    print("");
  }
}