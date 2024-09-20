import "dart:io";

void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  int num=10;
  for(int i=1;i<=row;i++){
    for(int j=1;j<=row;j++){
      if(num<100){
        stdout.write("$num \t");
        num+=10;
      }else{
         stdout.write("$num \t");
        num+=1;
      } 
    }
    print("");
  }
}