import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class widget_tile_customizada extends StatelessWidget {
  IconData icone;
  String titulo, subtitulo;

  widget_tile_customizada(this.icone, this.titulo, this.subtitulo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 5),
        child: Column(
          children: <Widget>[
            Row( children: <Widget>[
              Text(titulo, style: TextStyle( color: Colors.grey,),),
              Expanded(child: Text(subtitulo, textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12),),),
            ],

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Divider( color: Colors.grey, height: 10, ),
            ),
          ],
        ),
      ),
    );
  }
}
