import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PracticeQuestionPage extends StatefulWidget {
  const PracticeQuestionPage({super.key});

  @override
  State<PracticeQuestionPage> createState() => _PracticeQuestionPageState();
}

class _PracticeQuestionPageState extends State<PracticeQuestionPage> {
  List<Map<String, dynamic>> quizData = [
    {
      "question": "Salom Ali",
      "answer": [
        {"answer": "Hello Ali", "isCorrect": false},
        {"answer": "My name is Ali", "isCorrect": true},
        {"answer": "name is Ali", "isCorrect": false},
        {"answer": "My Ali", "isCorrect": false},
      ]
    },
    {
      "question": "GoodBye John",
      "answer": [
        {"answer": "Kettik Jon", "isCorrect": false},
        {"answer": "Men Jonman", "isCorrect": false},
        {"answer": "Xayir Jon", "isCorrect": true},
        {"answer": "Salom Jon", "isCorrect": false},
      ]
    },
    {
      "question": "I am Happy",
      "answer": [
        {"answer": "Men hafaman", "isCorrect": false},
        {"answer": "Men kulyabman", "isCorrect": false},
        {"answer": "Men Xordiq chiqaryabman", "isCorrect": false},
        {"answer": "Men Xursandman", "isCorrect": true},
      ]
    },
    {
      "question": "Today is a sunny day",
      "answer": [
        {"answer": "Bugun quyoshli kun", "isCorrect": true},
        {"answer": "Yomg'ir yoqyabdi", "isCorrect": false},
        {"answer": "Bugun Yomg'irli kun", "isCorrect": true},
        {"answer": "Bulultli kun", "isCorrect": false},
      ]
    },
    {
      "question": "Green Nature",
      "answer": [
        {"answer": "Sariq uy", "isCorrect": false},
        {"answer": "Yashil Tabiat", "isCorrect": true},
        {"answer": "Qizil rasm", "isCorrect": false},
        {"answer": "JIgarrang qalam", "isCorrect": false},
      ]
    },
    {
      "question": "New a car",
      "answer": [
        {"answer": "Zo'r moshina", "isCorrect": false},
        {"answer": "Jud yomon o'yinchoq", "isCorrect": false},
        {"answer": "Yangi moshina", "isCorrect": true},
        {"answer": "Eski moshina", "isCorrect": false},
      ]
    },
    {
      "question": "I like ice cream",
      "answer": [
        {"answer": "Men muzqaymoqni yoqtiraman", "isCorrect": true},
        {"answer": "Muzqaymoq juda mazzali", "isCorrect": false},
        {"answer": "Men muzqaymoqni yoqtirmayman", "isCorrect": false},
        {"answer": "shirin banan", "isCorrect": false},
      ]
    },
  ];
  int questionIndex = 0;
  int score = 0;

  void checkAnswer(bool isCorrect) {
    setState(() {
   if(questionIndex<quizData.length-1){
        questionIndex++;
      }
      else{
        showDialog(
            context: context,
            builder: (BuildContext context){
            return Dialog(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: 200,
                child:  Column(
                  children: [
                   const Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/png_picture/custom's_oicture.jpg"),
                          radius: 25,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text("Score/Natija $score"),
                    const SizedBox(
                      height:10,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 150,),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, child:const  Text('No'),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, child:const Text('Yes'),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            );
            },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('Quiz/Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "${questionIndex + 1}:${quizData[questionIndex]["question"]}",
                style: GoogleFonts.aboreto(color: Colors.white, fontSize: 30),
              ),
            ),
          const  SizedBox(
              height: 30,
            ),
            ...quizData[questionIndex]['answer'].map((answer) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    return checkAnswer(answer['isCorrect']);
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      answer['answer'],
                      style:
                          GoogleFonts.actor(color: Colors.black, fontSize: 20),
                    )),
                  ),
                ),
              );
            }).toList(),
           const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: questionIndex<quizData.length-1?
    ()=>checkAnswer(false):null,
                child:Text(questionIndex<quizData.length-1?"Next":"Finish"),
            ),
            SizedBox(height: 16,),

          ],
        ),
      ),
    );
  }
}
