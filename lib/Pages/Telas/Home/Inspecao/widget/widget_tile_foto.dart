import 'package:flutter/material.dart';

class widget_tile_foto extends StatelessWidget {

  String  titulo, foto;
  widget_tile_foto({@required  this.titulo, @required  this.foto });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 2, left: 10, right: 10),
        child: InkWell(
          onTap: () {},
          child: Container(
            width:150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text( titulo , style: TextStyle(fontSize: 15), overflow: TextOverflow.ellipsis,),
                Center(
                  child: Container(
                      height: 68,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white,),
                      child: Image.asset(foto),
                  ),
                ),
                Container(
                    height: 40,
                    width: 150,
                    child: Column(
                      children: <Widget>[
                        Text("restante: 100%"),
                        LinearProgressIndicator( value: 10, ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
