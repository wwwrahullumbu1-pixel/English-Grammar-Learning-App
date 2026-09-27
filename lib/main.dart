import 'package:flutter/material.dart';
import 'package:learn_english_easy/screens/home_screen.dart';

void main() {
  runApp(const EnglishGrammarApp());
}

class EnglishGrammarApp extends StatelessWidget {
  const EnglishGrammarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn English Easy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7FF),
      ),
      home: const HomeScreen(),
    );
  }
}
