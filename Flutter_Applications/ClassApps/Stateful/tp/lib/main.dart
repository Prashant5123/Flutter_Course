import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> allQuestions=[
    {
      "question":"Which data type can hold the value of both int and double?",
      "options":[
        "num",
        "double",
        "int",
        "numeric"
      ],
      "correctAns":0
    },
    {
      "question":"Which of the following data can be used to represent 'John' ?",
      "options":[
        "string",
        "char",
        "String",
        "str"
      ],
      "correctAns":2
    },
    {
      "question":"Which of the following is not a built-in data type in Dart?",
      "options":[
        "Int",
        "String",
        "double",
        "int",

      ],
      "correctAns":0
    },
    {
      "question":"Which of the following is a correct syntax for defining a variable in dart?",
      "options":[
        "var x = 10",
        "x=10",
        "integer x = 10",
        "variable x = 10"
      ],
      "correctAns":0
    },
    {
      "question":"Guess the output of the following code\nvoid main(){\nint x;\nint y-10;\nprint(y);\n}",
      "options":[
        "Error",
        "10",
        "null",
        "0"
      ],
      "correctAns":1
    },
    {
      "question":"Which of the following is not an Arithmetic operator?",
      "options":[
        "%",
        "+",
        "-",
        "@"
      ],
      "correctAns":3
    },
    {
      "question":"How many operand(s) can unary operators take to perform an operation?",
      "options":[
        "2",
        "3",
        "1",
        "Cant Decide"
      ],
      "correctAns":2
    },
    {
      "question":"The outcome of the operation performed using the Relational Operators is of type......",
      "options":[
        "int",
        "will be decided based on operands",
        "double",
        "bool"
      ],
      "correctAns":3
    },
    {
      "question":"& falls under which operator?",
      "options":[
        "Logical Opeartor",
        "Comparison Operators",
        "Bitwise Operators",
        "Arithmetic Operators"
      ],
      "correctAns":2
    },
    {
      "question":"_ _ _data type can be used to represent true or false.",
      "options":[
        "Boolean",
        "bool",
        "flag",
        "num"
      ],
      "correctAns":1
    },
  ];
  List<int> preAns=[];
  int screen=1;
  int currentQueIndex=0;
  int selectedAns=-1;
  int score=0;

  WidgetStateProperty<Color?> setColor(int optionIndex){
    if(selectedAns!=-1){
      if(optionIndex==allQuestions[currentQueIndex]["correctAns"]){
        return WidgetStateProperty.all(Colors.green);
      }
      else if(selectedAns==optionIndex){
        return WidgetStateProperty.all(Colors.red);
      }
      else{
        return WidgetStateProperty.all(null);
      }
    }
    else{
      return WidgetStateProperty.all(null);
    }
  }
  

  @override
  Widget build(BuildContext context){
    return appScreen();
  }

  Scaffold appScreen(){
    if(screen==1){
      return Scaffold(
        appBar: AppBar(
          title:const Text("Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width:350,
                height: 350,
                child: Image.network("https://media.istockphoto.com/id/1616906708/vector/vector-speech-bubble-with-quiz-time-words-trendy-text-balloon-with-geometric-grapic-shape.jpg?s=612x612&w=0&k=20&c=3-qsji8Y5QSuShaMi6cqONlVZ3womknA5CiJ4PCeZEI="),
              ),

              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  onPressed: (){
                    screen=2;
                    setState(() {
                      
                    });
                  },

                  child:const Text("Start Quiz",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }else if(screen==2){
      return Scaffold(
        appBar: AppBar(
          title:const Text("Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),


        body:Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Question:${currentQueIndex+1}/${allQuestions.length}",
                  style:const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 28,
            ),

            Container(
              decoration: const BoxDecoration(color: Color.fromARGB(255, 212, 212, 212)),
              child: Text(allQuestions[currentQueIndex]["question"],
                style:const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(0),
                ),
          
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=0;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("A. ${allQuestions[currentQueIndex]["options"][0]}",
                  style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(1),
                ),
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=1;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("B. ${allQuestions[currentQueIndex]["options"][1]}",
                  style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(2),
                ),
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=2;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("C. ${allQuestions[currentQueIndex]["options"][2]}",
                  style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(3),
                ),
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=3;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("D. ${allQuestions[currentQueIndex]["options"][3]}",
                  style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

             const SizedBox(
              height: 28,
            ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
              style:ButtonStyle(backgroundColor:  WidgetStateProperty.all(Colors.blue)),
              onPressed: (){
                  if(currentQueIndex>0){
                    selectedAns=preAns[currentQueIndex];
                    currentQueIndex--;
                    
                  }
              
                setState(() {
                  
                });
              },
              
              child: const Icon(Icons.arrow_back_ios_new_sharp,
                color: Colors.orange,
              ),
            ),

                   const SizedBox(
              width:200,
            ),
            ElevatedButton(
              style:ButtonStyle(backgroundColor:  WidgetStateProperty.all(Colors.blue)),
              onPressed: (){
                if(selectedAns==allQuestions[currentQueIndex]["correctAns"]){
                  score++;
                }

                if(currentQueIndex+1<preAns.length){
                  selectedAns=preAns[currentQueIndex]+1;
                  currentQueIndex++;
                  
                }
                else if(selectedAns!=-1){
                  preAns.insert(currentQueIndex,selectedAns);
                  if(currentQueIndex<allQuestions.length-1){
                    currentQueIndex++;
                    selectedAns=-1;
                  }else{
                    screen=3;
                  }
                }
              
                setState(() {
                  
                });
              },
              
              child: const Icon(Icons.arrow_forward_ios_sharp,
                color: Colors.orange,
              ),
            ),
            ],
          ),

            
          ],
        ),

        

        
      );
    }else{
      return Scaffold(
        appBar: AppBar(
          title:const Text("Quiz end",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Image.network("https://img.freepik.com/free-vector/trophy-flat-style_78370-3222.jpg?w=360")
              ),
            
              const SizedBox(
                height: 28,
              ),

              const Text("Congratulations",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700
                ),
              ),

              const SizedBox(
                height: 28,
              ),

              Text("Score: $score/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700
                ),
              ),

              const SizedBox(
                height: 28,
              ),

              SizedBox(
                height: 50,
                width: 200,
                
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  onPressed: (){
                    screen=1;
                    selectedAns=-1;
                    currentQueIndex=0;
                    screen=1;
                    score=0;
                    setState(() {
                      
                    });
                  },
                
                  child: const Text("Retest",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),




            ],
          ),
        ),
      );
    }
  }
}
