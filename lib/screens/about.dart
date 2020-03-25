import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text("Sobre",
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
          Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Voltar"),
          
          )
      ),
      ]
      
      ) 
      
     
    );
  }
}