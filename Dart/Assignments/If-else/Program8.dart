// Write a dart program to check whether the number is divisible
// by 3 & 5 i.e
// If the number is divisible by both 3 and 5 : o/p ”Divisible by
// both”
// If number is only divisible by 3 : o/p “Divisible by 3”
// If number is only divisible by 5 : o/p “Divisible by 5”
// If neither divisible by 3 nor 5 then : o/p “”Not divisible by 3
// or 5”

void main(){
  var num=15;

  if(num%3==0 && num%5==0){
    print("Divisible by both");
  }else if(num%3==0){
    print("Divisible by 3");
  }else if(num%5==0){
    print("Divisible by 5");
  }else{
    print("Not divisible by 3 or 5");
  }

}