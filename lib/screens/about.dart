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
                    fontSize: 25.0,
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
          Center(child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child:Container(
                child:
                  Image.asset(
                  "images/logo3.png",
                  height: 200.0,
                  ),
                ),
                onTap: (){
                  _launchURL2();
                },
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  height: 290,
                  width: 400,
                  

                child:
                  Text(
                    "Esse aplicativo foi desenvolvido por alunos do curso de Engenharia de Computação da USF Itatiba sob a orientação do professor José Matias Lemes filho com o intuito de introduzir tecnologias de mercado como: Flutter, Firebase e o sistema de controle de versões GIT",
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                      fontFamily: 'LuckiestGuy'
                      ),
                      textAlign: TextAlign.center,
                    ),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  border: Border.all(color: Colors.brown),
                  color: Colors.brown,
                    ),

              ),
              Container(
                padding: EdgeInsets.fromLTRB(65.0, 10.0, 65.0, 0.0),
                child: RaisedButton(
                  onPressed: _launchURL,
                  child: Text(
                        "GitHub",
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
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),

              )
            ),

          ]
        ) )
          

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

_launchURL2() async {
  const url2 = 'https://www.usf.edu.br';
  if (await canLaunch(url2)) {
    await launch(url2);
  } else {
    throw 'Could not launch $url2';
  }
}

