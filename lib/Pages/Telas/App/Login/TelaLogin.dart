import 'package:flutter/material.dart';
import 'file:///C:/Users/piori/AndroidStudioProjects/visto_soft/lib/Pages/Telas/Home/Home/widget/widget_custon_botao.dart';
import 'package:visto_soft/Pages/Telas/App/Login/widget/widget_custon_textField.dart';
import 'package:visto_soft/Pages/Telas/Home/Home/TelaHome.dart';


class LoginScream extends StatefulWidget {
  @override
  _LoginScreamState createState() => _LoginScreamState();
}

class _LoginScreamState extends State<LoginScream> {
  @override
  Widget build(BuildContext context) {
    final double alturatela = MediaQuery.of(context).size.height;
    final double radioborda = 80;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(
              children: <Widget>[
            Container(
              height: alturatela,
              color: Color.fromARGB(255, 200, 220, 219),
            ),
            Positioned(
              top: -30,
              left: -70,
              child:Image.asset('imagens/assets/novo.gif', height: 400, width: 500,),),
            Positioned(
              top: alturatela / 3,
              height: alturatela,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radioborda),
                    topRight: Radius.circular(radioborda),
                     ),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Image.asset('imagens/assets/logovermelho.png', height: 60, width: 60,),
                  ),
                    widget_custon_textField(),
                    FlatButton(
                      padding: EdgeInsets.only(top: 20),
                      onPressed: (){},
                      child: Text("Esqueceu a Senha?",
                      style: TextStyle(fontSize: 15, color: Colors.grey), textAlign: TextAlign.center,),),
                    SizedBox(height: 60,),
                    widget_custon_botao(
                      width: MediaQuery.of(context).size.width-50,
                      heigth: 50,
                      label: "Login",
                      pagina: inspecao(),
                      colors: Colors.red,
                    ),
                ],
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
