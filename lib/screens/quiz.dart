import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
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
      body: Stack(
      children: <Widget>[
          Image.asset(
              "images/Dino1.jpg",
              fit: BoxFit.cover,
              height: 1000.0,
            ),
          ListView(
            children: <Widget>[
              Container(
                child:
                Text(
                  "Questão 1",
                  style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 25.0,
                  fontFamily: 'Slackey'),
                textAlign: TextAlign.center,
                ),
                color: Colors.brown,
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                child: 
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed sem tincidunt, porta mauris id, pulvinar felis. Cras dictum tristique aliquet. Morbi commodo sapien posuere tincidunt laoreet. Nullam id orci non nibh efficitur mattis nec non libero. Nulla nec suscipit justo, at ornare massa. Morbi vehicula mi ut est eleifend, quis ultricies magna consectetur. ",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.green[400],
                      fontFamily: 'LuckiestGuy'
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.brown,
                
                
              ),
              Container(
                padding: EdgeInsets.fromLTRB(28.0, 5.0, 28.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                        "Opção A",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                  color: Colors.brown,
          
              )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(28.0, 0.0, 28.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                        "Opção B",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                  color: Colors.brown,
          
              )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(28.0, 0.0, 28.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                        "Opção C",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                  color: Colors.brown,
          
              )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(28.0, 0.0, 28.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                        "Opção D",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.green[400],
                            fontFamily: 'Slackey'),
                      ),
                  color: Colors.brown,
          
              )
            ),
              Container(
                padding: EdgeInsets.fromLTRB(28.0, 0.0, 28.0, 0.0),
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
            ],
          )
          
      ]
      
      ) 
      
     
    );
  }
}