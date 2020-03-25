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
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Voltar"),
          
          )
      ),
    );
  }
}