import 'package:flutter/material.dart';
import 'package:learn_english_for_chilren/home_page/grammar.dart';
import 'package:learn_english_for_chilren/home_page/practice_page.dart';

import 'package:learn_english_for_chilren/lists_page/gridview_list.dart';
import 'package:learn_english_for_chilren/utils/appImage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GrammarPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                width: 200,
                height: 100,
                child: const Center(child: Text('Grammar')),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PracticeQuestionPage(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                width: 200,
                height: 100,
                child: const Center(child: Text('Practice')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
