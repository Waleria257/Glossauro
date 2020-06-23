import 'package:flutter/material.dart';
import 'screens/about.dart';
import 'screens/quiz.dart';
import 'screens/score.dart';
import 'util/size_config.dart';
import 'bloc/question_repository.dart';
import 'bloc/question_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(new MaterialApp(
  home: Home(), 
  debugShowCheckedModeBanner: false,
));
  
}

class Home extends StatefulWidget {
   @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    
  double setWidth(double value) {
    return value * AppSize.heightPercentage(MediaQuery.of(context).size.height);
  }

  double setHeight(double value) {
    return value * AppSize.widthPercentage(MediaQuery.of(context).size.width);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("GLOSSAURO",
                style: TextStyle(
                    color: Colors.green[400],
                    fontSize: setWidth(35.0),
                    fontFamily: 'Slackey')),
            centerTitle: true,
            backgroundColor: Colors.brown),
        body: Stack(
          children: <Widget>[
            Image.asset(
              "images/Dino1.jpg",
              fit: BoxFit.cover,
              height: setHeight(1000.0),
            ),
            ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
              Container( 
                child:
                  Image.asset(
                  "images/DinoMenu.png",
                  height: setHeight(200.0),
                  ),
              ), 
                Container(
                    padding: EdgeInsets.fromLTRB(setWidth(20.0), setWidth(50.0), setWidth(20.0), setWidth(0.0)),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return RepositoryProvider<QuestionRepository> (
                                create: (context) => QuestionRepositoryFirebase(),
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
                            fontSize: setWidth(30.0),
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
                    padding: EdgeInsets.fromLTRB(setWidth(20.0), setWidth(50.0), setWidth(20.0), setWidth(0.0)),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Score()),);
                        },
                      child: Text(
                        "Pontuação",
                        style: TextStyle(
                            fontSize: setWidth(30.0),
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(setWidth(20.0), setWidth(50.0), setWidth(20.0), setWidth(0.0)),
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
               
              ],
            )
          ],
        )
    );
  }
}



