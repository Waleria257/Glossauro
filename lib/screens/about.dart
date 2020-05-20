import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text("Sobre o App",
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
              Image.asset(
              "images/logo1.png",
              height: 200.0,
            ),
            
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),

                child: RaisedButton(
                  onPressed: _launchURL,
                 child: 
                  Text(
                  "Esse aplicativo foi desenvolvido por alunos do curso de Engenharia de Computação da USF Itatiba sob a orientação do professor José Matias Lemes filho com o intuito de introduzir tecnologias de mercado como: Flutter, Firebase e o sistema de controle de versões GIT",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.green[400],
                    fontFamily: 'LuckiestGuy'
                      ),
                  textAlign: TextAlign.left
                    ),
                  color: Colors.brown,
                )
                
              ),
              Container(
                padding: EdgeInsets.fromLTRB(28.0, 75.0, 28.0, 0.0),
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
_launchURL() async {
  const url = 'https://github.com/Waleria257/Glossauro';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}