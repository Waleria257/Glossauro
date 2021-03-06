import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layout_glossauro/bloc/question_bloc.dart';
import 'package:layout_glossauro/bloc/question_events.dart';
import 'package:layout_glossauro/bloc/question_state.dart';

import 'package:layout_glossauro/screens/result.dart';

class Quiz extends StatefulWidget {
  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  QuestionBloc bloc;
  int totalOfQuestions;
  int currQuestion;
  int wrightAnwers;

  @override
  void initState() {
    super.initState();
    this.bloc = BlocProvider.of(context);
    this.bloc.init().then((value) => this.totalOfQuestions = value);

    this.currQuestion = 1;
    this.wrightAnwers = 0;
  }

  @override
  void dispose() {
    this.bloc.close();
    super.dispose();
  }

  void verifyAnswer(Map alternative) {
    ++this.currQuestion;

    if (this.currQuestion <= this.totalOfQuestions) {

      if (alternative['verdadeiro']) {
        ++this.wrightAnwers;
      }

      bloc.add(NewQuestionEvent());
    } else {

      double percent = this.wrightAnwers / this.totalOfQuestions * 100;
      Navigator.pop(context, percent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Quiz",
                style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 35.0,
                    fontFamily: 'Slackey')),
            centerTitle: true,
            backgroundColor: Colors.brown),
        body: Stack(children: <Widget>[
          Image.asset(
            "images/Dino1.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          BlocBuilder(
            bloc: bloc,
            builder: (context, data) {
              if (data is QuestionHasDataState) {
                return ListView(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Questão " + this.currQuestion.toString(),
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25.0,
                            fontFamily: 'Slackey'),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.brown,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10.0, 150.0, 10.0, 150.0),
                      child: Text(
                          // ### enunciado ###
                          data.data.body,
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontFamily: 'LuckiestGuy'),
                          textAlign: TextAlign.center),
                      color: Colors.brown,
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 0.0),
                        child: RaisedButton(
                          onPressed: () =>
                              this.verifyAnswer(data.data.options[0]),
                          child: Text(
                            // ### alternativa A ###
                            data.data.options[0]['texto'],
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.green[400],
                                fontFamily: 'Slackey'),
                          ),
                          color: Colors.brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 0.0),
                        child: RaisedButton(
                          onPressed: () =>
                              this.verifyAnswer(data.data.options[1]),
                          child: Text(
                            // ### alternativa B ###
                            data.data.options[1]['texto'],
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.green[400],
                                fontFamily: 'Slackey'),
                          ),
                          color: Colors.brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 0.0),
                        child: RaisedButton(
                          onPressed: () =>
                              this.verifyAnswer(data.data.options[2]),
                          child: Text(
                            // ### alternativa C ###
                            data.data.options[2]['texto'],
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.green[400],
                                fontFamily: 'Slackey'),
                          ),
                          color: Colors.brown,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ],
                );
              } else if (data is QuestionsEndedState) {
                dispose();
                Navigator.pop(context);
              } else {
                return CircularProgressIndicator();
              }
            },
          )
        ]));
  }
}
