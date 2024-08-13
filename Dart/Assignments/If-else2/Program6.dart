// Write a dart program, to print the BMI (Body Mass Index) status.
// BMI less than 18.5 is underweight
// BMI in range 18.5 to 24.9 is normal
// BMI in range 25.0 to 29.9 is Overweight
// BMI in range 30.0 to 34.9 is Obese
// BMI greater than 35.0 is Extreme Obese.

void main(){
  double bmi=26.6;
  if(bmi<18.5){
    print("Underweight");
  }else if(bmi>=18.5 && bmi<=24.9){
    print("Normal");
  }else if(bmi>=25.0 && bmi<=29.9){
    print("Overweight");
  }else if(bmi>=30.0 && bmi<=34.9){
    print("Obese");
  }else{
    print("Extreme obese");
  }     
}