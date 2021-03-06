import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  int _pont = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text("Pontuação",
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
            children: <Widget>[
               Center(
                child: 
                  Text(
                    "\nScore\n$_pont",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.brown,
                      fontFamily: 'LuckiestGuy'
                      ),
                      textAlign: TextAlign.center,
                    ),
              ),
              Container(
                child:
                  Image.asset(
                  "images/DinoSilver.jpg",
                  height: 300.0,
                  ),
              ),
              Container(
                child: 
                  Text(
                    "Silver Medal",
                    style: TextStyle(
                      fontSize: 43.8,
                      color: Colors.black,
                      fontFamily: 'BungeeShade'
                      ),
                      textAlign: TextAlign.center,
                    ),
                  color: Colors.grey[400],
              ),

              
             

              Container(
                padding: EdgeInsets.fromLTRB(28.0, 43.5, 28.0, 0.0),
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