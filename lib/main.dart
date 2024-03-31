import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/category_screen.dart';
import 'package:quiz_app_ewabootcamp/screens/login_screen.dart';
import 'package:quiz_app_ewabootcamp/screens/question_screen.dart';
import 'package:quiz_app_ewabootcamp/screens/score_screen.dart';
import 'package:quiz_app_ewabootcamp/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 113, 112, 156)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
