import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_english_for_chilren/home_page/modern/listview_list.dart';

class Lesoon1 extends StatelessWidget {
  final MyLesson name;
  const Lesoon1({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
 backgroundColor: Colors.orange,
 title: Text("Bu so'zlarni ko'proq takrorlang!",style: GoogleFonts.actor(color: Colors.white,fontSize: 22),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(name.title,style: GoogleFonts.actor(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.w500),),
           const SizedBox(
              height: 20,
            ),
            Text(name.description,style: GoogleFonts.acme
              (color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25),),
           const  SizedBox(height: 15,),
            Image.asset(name.images),
          ],
        ),
      ),
    );
  }
}
