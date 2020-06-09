import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';

class widget_adicionar_placa extends StatefulWidget {

  String tipovisotira;

  widget_adicionar_placa({this.tipovisotira});

  @override
  _widget_adicionar_placaState createState() => _widget_adicionar_placaState();
}

class _widget_adicionar_placaState extends State<widget_adicionar_placa> {
   bool digitando = false;
   final textcontrole = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 5),
                blurRadius: 5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 5),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onSubmitted: (text) {

                      Firestore.instance
                          .collection("vistorias").document("${widget.tipovisotira}").collection("abertas")
                          .add({
                        "osnumero" : Random(0001).nextInt(999999999),
                        "placa": "${textcontrole.text}",
                        "tipovisotoria": "${widget.tipovisotira}",
                        "datahora": "${formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy, ' - ', HH, ':', nn,])}",
                        "status": "Aberto",
                      });

                      Firestore.instance.collection("vistorias").document("${widget.tipovisotira}").collection("todos")
                          .add({
                        "osnumero" : Random(0001).nextInt(999999999),
                        "placa": "${textcontrole.text}",
                        "tipovisotoria": "${widget.tipovisotira}",
                        "datahora": "${formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy, ' - ', HH, ':', nn,])}",
                        "status": "Aberto",
                      });
                      textcontrole.clear();
                      setState(() {
                        digitando  = false;
                      }
                      );

                                },
                    onChanged: (valor){
                      setState(() {
                        if (textcontrole.text.isNotEmpty){
                          digitando  = true;
                        } else digitando = false;
                      });

                    },
                    controller: textcontrole,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'PLACA',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                      hintText: "AAA-0000",
                      hintStyle: TextStyle(color: Colors.white),

                    ),
                  ),
                ),
                 digitando != true
                    ? FlatButton(
                        onPressed: null,
                        child: Icon(
                          Icons.add,
                          color: Colors.red,
                        ),
                      )
                    : FlatButton(
                        onPressed: () {
                          Firestore.instance
                              .collection("vistorias").document("${widget.tipovisotira}").collection("abertas")
                              .add({
                            "osnumero" : Random(0001).nextInt(999999999),
                            "placa": "${textcontrole.text}",
                            "tipovisotoria": "${widget.tipovisotira}",
                            "datahora": "${formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy, ' - ', HH, ':', nn,])}",
                            "status": "Aberto",
                              });
                          Firestore.instance.collection("vistorias").document("${widget.tipovisotira}").collection("todos")
                              .add({
                          "osnumero" : Random(0001).nextInt(999999999),
                          "placa": "${textcontrole.text}",
                          "tipovisotoria": "${widget.tipovisotira}",
                          "datahora": "${formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy, ' - ', HH, ':', nn,])}",
                          "status": "Aberto",
                          });
                          textcontrole.clear();
                          setState(() {
                            digitando  = false;
                          });
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
