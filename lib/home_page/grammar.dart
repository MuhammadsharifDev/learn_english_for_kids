import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_english_for_chilren/home_page/lesson_!.dart';
import 'package:learn_english_for_chilren/home_page/modern/listview_list.dart';

class GrammarPage extends StatelessWidget {
  GrammarPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Grammar English',
          style: GoogleFonts.aBeeZee(),
        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lesoon1(
                      name: ListViewList.itemlist[index].lessons,
                    ),
                  ),
                );
              },
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(ListViewList.itemlist[index].name),
                  ],
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 5,
        ),
        itemCount: ListViewList.itemlist.length,
      ),
    );
  }
}
