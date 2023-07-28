import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_english_for_chilren/home_page/second_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late TextStyleTween _styleTween;
  late CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _styleTween = TextStyleTween(
      begin: const TextStyle(
          fontSize: 30, color: Colors.blue, fontWeight: FontWeight.w600),
      end: const TextStyle(
          fontSize: 30, color: Colors.deepOrange, fontWeight: FontWeight.w100),
    );
    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    );
    Future.delayed(
        const Duration(seconds: 5)).then((value) =>
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondPage(),),),);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,

      body: Center(
        child: DefaultTextStyleTransition(
          style: _styleTween.animate(_curvedAnimation),
          child: Center(child: const Text("Let's go Learn English",)),
        ),
      ),
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}