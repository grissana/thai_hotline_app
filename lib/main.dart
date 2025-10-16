import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/view/introduction_call_ui.dart';

void main() {
  runApp(ThaiHotlineApp());
}

class ThaiHotlineApp extends StatefulWidget {
  const ThaiHotlineApp({super.key});

  @override
  State<ThaiHotlineApp> createState() => _ThaiHotlineAppState();
}

class _ThaiHotlineAppState extends State<ThaiHotlineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionCallUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
