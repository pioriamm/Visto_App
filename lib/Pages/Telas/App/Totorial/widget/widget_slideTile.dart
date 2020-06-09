import 'package:flutter/material.dart';

class widget_slideTile extends StatelessWidget {

  String imagem, titulo,  descricao;

  widget_slideTile({@required this.imagem, @required this.titulo, @required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).padding.top,),
        Container(
          margin: EdgeInsets.only(top: 30, left: 30, right: 30),
          child: CircleAvatar( radius: 150,  backgroundImage: AssetImage(imagem), ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Center( child: Text(titulo,  style: TextStyle(color: Colors.black, fontSize: 40),),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Center(child: Text(descricao, style: TextStyle(color: Colors.black),textAlign:TextAlign.center,),
          ),
        ),
      ],
    );
  }
}
