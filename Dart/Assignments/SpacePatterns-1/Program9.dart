import "dart:io";

void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  int num=row*(row+1);
  for(int i=1;i<=row;i++){
    
    for(int sp=1;sp<i;sp++){
      stdout.write("\t");
    }
    for(int j=i;j<=row;j++){
      stdout.write("${num}\t");
      num-=2;
    }
    print("");
  }
}