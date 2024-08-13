// Write a dart program to check whether you are eligible for campus placements:
// You are eligible only if
// 1. Your 12th percentage is greater than equal to 70.0.
// 2. Your cgpa is greater than equal to 7.0.
// You are eligible only if both the conditions are true

void main(){
  double percentage=75;
  double cgpa=9;

  if(cgpa>=7.0 && percentage>=70.0){
    print("You are eligible");
  }else{
    print("You are not eligible");
  }
}