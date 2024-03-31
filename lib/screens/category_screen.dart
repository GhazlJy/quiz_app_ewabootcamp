import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/data/app_question_and_answers.dart';
import 'package:quiz_app_ewabootcamp/screens/question_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            categoryContainer(
                "Programming quiz",
                Color.fromARGB(255, 170, 197, 247),
                context,
                programmingQuizQuestionsAndAnswers),
            categoryContainer(
                "History quiz",
                Color.fromARGB(255, 238, 206, 238),
                context,
                historyQuizQuestionsAndAnswers),
            categoryContainer("Sport quiz", Color.fromARGB(255, 113, 112, 156),
                context, sportsQuizQuestionsAndAnswers),
          ],
        ),
      ),
    );
  }

  Widget categoryContainer(
      String quuizName, Color quizColor, context, List qList) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => QuestionScreen(
                  questionsAndAnswersList: qList,
                ),
              ));
        },
        child: Container(
          child: Center(
              child: Text(
            quuizName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          color: quizColor,
        ),
      ),
    );
  }
}
