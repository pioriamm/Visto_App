import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visto_soft/Helps/Helpers.dart';
import 'package:visto_soft/Pages/Telas/App/Totorial/TelaTutorial.dart';


class ScreamSplash extends StatefulWidget {

  @override
  _ScreamSplashState createState() => _ScreamSplashState();
}

class _ScreamSplashState extends State<ScreamSplash> {
  bool op = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      MudarPagina(context, TutorialScream());
    });
    Future.delayed(Duration(seconds: 1)).then((_) {
      setState(() {
        op = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: AnimatedOpacity(
          opacity: op ? 1.0 : 0.0,
          duration: Duration(seconds: 2),
          curve: Curves.easeIn,
          child: Container(
              height: 200,
              width: 250,
              child: Column(
                children: <Widget>[
                  Text("GRUPO", style: TextStyle( fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage("imagens/assets/logobranco.png",), width: 100, height: 100,),
                  ),
                  Text("OTIMIZA", style: TextStyle( fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                ],
              )
          ),
        ),
      ),
    );
  }
}
