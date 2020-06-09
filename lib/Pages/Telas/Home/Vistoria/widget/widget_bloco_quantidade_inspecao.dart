import 'package:flutter/material.dart';

class widget_bloco_quantidade_inspecao extends StatelessWidget {

   String titulo;
   String quantidades;

   widget_bloco_quantidade_inspecao({this.titulo, this.quantidades});

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 10),
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                titulo,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  quantidades,
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
