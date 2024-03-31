import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/score_screen.dart';
import 'package:quiz_app_ewabootcamp/utils/global_variable.dart';

class QuestionScreen extends StatefulWidget {
  final List? questionsAndAnswersList;

  QuestionScreen({super.key, this.questionsAndAnswersList});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _currentIndex = 0;
  int _scoreCounter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20, right: 12, left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Question Number: ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 103, 155, 197),
                      fontSize: 25,
                    ),
                  ),
                  Text(
                      "${_currentIndex + 1}/  ${widget.questionsAndAnswersList!.length}  ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 113, 112, 156))),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(widget.questionsAndAnswersList![_currentIndex]["ques"],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 113, 112, 156),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),

// this is answers list

              for (int i = 0;
                  i <
                      widget.questionsAndAnswersList![_currentIndex]["answers"]
                          .length;
                  i++)
                ElevatedButton(
                    onPressed: () {
                      if ((_currentIndex + 1) <
                          widget.questionsAndAnswersList!.length) {
                        setState(() {
                          //////////////////////////////////////////////////////
                          if (widget.questionsAndAnswersList![_currentIndex]
                                  ["answers"][i] ==
                              widget.questionsAndAnswersList![_currentIndex]
                                  ["correctAnswerIndex"]) {
                            _scoreCounter++;
                          }
                          ///////////////////////////////////////////////////////

                          // _currentIndex = _currentIndex + 1;
                          _currentIndex++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ScoreScreen(),
                          ),
                        );

                        totalScore = _scoreCounter;
                      }
                    },
                    child: Text(widget.questionsAndAnswersList![_currentIndex]
                        ["answers"][i])),
            ],
          ),
        ),
      ),
    );
  }
}
