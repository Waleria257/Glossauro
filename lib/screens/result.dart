import 'package:flutter/material.dart';


class Result extends StatefulWidget {
  @override
  ResultState createState() {
    return ResultState();
  }
}

class ResultState extends State<Result> {
  String _infoText = "Você acertou";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text("$_infoText",
                style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 35.0,
                    fontFamily: 'Slackey',
                    )
                  ),
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
            children: <Widget>[
               Center(
                child: 
                  Text(
                    "\nParabéns!!!",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.black,
                      fontFamily: 'LuckiestGuy'
                      ),
                      textAlign: TextAlign.center,
                    ),
              ),
              Container(
                child:
                  Image.asset(
                  "images/Dinohappy.jpg",
                  height: 300.0,
                  ),
              ),

              
             Container(
                padding: EdgeInsets.fromLTRB(28.0, 43.5, 28.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                        "Tentar novamente",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                  color: Colors.brown,
          
              )
            ),

              Container(
                padding: EdgeInsets.fromLTRB(28.0, 5.5, 28.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                        "Menu inicial",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                  color: Colors.brown,
          
              )
            ),
            
          ]
        )
          
      ]
      
      ) 
      
     
    );
  }
}