import 'package:flutter/material.dart';
import 'screens/about.dart';
import 'screens/quiz.dart';
import 'screens/score.dart';
import 'screens/result.dart';

import 'bloc/question_repository.dart';
import 'bloc/question_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("GLOSSAURO",
                style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 35.0,
                    fontFamily: 'Slackey')),
            centerTitle: true,
            backgroundColor: Colors.brown),
        body: Stack(
          children: <Widget>[
            Image.asset(
              "images/Dino1.jpg",
              fit: BoxFit.cover,
              height: 1000.0,
            ),
            ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return RepositoryProvider<QuestionRepository> (
                                create: (context) => QuestionRepositoryFirebase()..refresh(),
                                child: BlocProvider(
                                  create: (context) => QuestionBloc(RepositoryProvider.of(context)),
                                  child: Quiz(),
                                )
                              );
                            }
                            )
                            );
                        },
                      child: Text(
                        "Quiz",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Score()),);
                        },
                      child: Text(
                        "Pontuação",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About()),);
                        },
                        
                      child: Text(
                        "Sobre",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Result()),);
                        },
                        
                      child: Text(
                        "Resultado(Teste)",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                      color: Colors.brown,
                    )
                ),
              ],
            )
          ],
        ));
  }
}

void main() {
  runApp(new MaterialApp(home: Home()));
}
