import "dart:io";

void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  
  for(int i=1;i<=row;i++){
     int num=1;
    for(int sp=i;sp<row;sp++){
      stdout.write("\t");
    }
    for(int j=1;j<=i*2-1;j++){
      if(j<i){
        stdout.write("${num++}\t");
      }
      else{
        stdout.write("${num--}\t");
      }
    }
    print("");
  }
}