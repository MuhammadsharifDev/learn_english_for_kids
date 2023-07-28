import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Define your quiz questions and answers
  List<Map<String, dynamic>> quizData = [
    {
      "question": "What is the capital of France?",
      "answers": [
        {"answer": "London", "isCorrect": false},
        {"answer": "Paris", "isCorrect": true},
        {"answer": "Madrid", "isCorrect": false},
        {"answer": "Berlin", "isCorrect": false}
      ]
    },
    {
      "question": "What is the largest planet in our solar system?",
      "answers": [
        {"answer": "Mars", "isCorrect": false},
        {"answer": "Jupiter", "isCorrect": true},
        {"answer": "Saturn", "isCorrect": false},
        {"answer": "Mercury", "isCorrect": false}
      ]
    },
    // Add more questions and answers here
  ];

  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        score++;
      }
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Test"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question ${currentQuestionIndex + 1}: ${quizData[currentQuestionIndex]['question']}",
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            ...quizData[currentQuestionIndex]['answers'].map((answer) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => checkAnswer(answer['isCorrect']),
                  child: Text(answer['answer']),
                ),
              );
            }).toList(),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: currentQuestionIndex < quizData.length - 1
                    ? () => checkAnswer(false)
                    : null,
                child: Text(
                    currentQuestionIndex < quizData.length - 1 ? "Next" : "Finish"),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "Score: $score/${quizData.length}",
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}