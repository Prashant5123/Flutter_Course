//write a dart program to find out whether you can run a flutter project on your laptop or not 

void main(){
  int ram=4;
  if(ram>=8 && ram%4==0){
    print("Can run a flutter project");
  }else{
    print("Can not run a flutter project");
  }
}