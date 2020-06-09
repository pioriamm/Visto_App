import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class widget_tile_inspecao extends StatefulWidget {
  String placas, datahora, osnumero, tipovistoria;


  widget_tile_inspecao({this.placas, this.tipovistoria, this.datahora, this.osnumero});

  @override
  _widget_tile_inspecaoState createState() => _widget_tile_inspecaoState();
}


class _widget_tile_inspecaoState extends State<widget_tile_inspecao> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //fundo da placa
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("OS: ${widget.osnumero}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                Text( '${widget.tipovistoria}', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12,),),
                Text("${widget.datahora}"),

              ],
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 62,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 5,
                      offset: Offset(2, 2),
                    )
                  ]),
              // placa
              child: Column(
                children: <Widget>[
                  //cabecalho da placa
                  Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(left: 3, right: 3, top: 3),
                    height: 20,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xfff0332a0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 15,
                          width: 20,
                          child: Image.asset(
                            "imagens/assets/mercosul.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Text(
                            "BRASIL",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 15,
                          width: 20,
                          child: Image.asset(
                            "imagens/assets/brasil.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //corpo da placa
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 3, right: 3, bottom: 3),
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                            child: Text(
                              widget.placas.toUpperCase(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Positioned(
                        bottom: 2,
                        left: 7,
                        child: Container(
                          child: Text(
                            "BR",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
