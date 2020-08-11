import 'package:flutter/material.dart';
import 'package:visto_soft/Helps/Helpers.dart';
import 'package:visto_soft/Pages/Telas/Home/Inspecao/TelaInspecao.dart';


class widget_placa extends StatelessWidget {

  String placa;
  widget_placa({@required this.placa});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => MudarPagina(context, TelaInspecao()),
      child: Container(
        margin: EdgeInsets.only(right: 8),
        child: Stack(children: <Widget>[
          Container(
            height: 102,
            width: 208,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 15,
                    offset: Offset(5, 10),
                  )
                ]
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(top: 3),
                  height: 25,
                  width: 200,
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
                        child: Image.asset("imagens/assets/mercosul.png", fit: BoxFit.cover,),
                      ),
                      Container(child: Text("BRASIL", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),),
                      Container(
                        height: 15,
                        width: 20,
                        child: Image.asset("imagens/assets/brasil.png", fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ),
                Stack(children: <Widget>[
                  Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Center(child: Text(placa, style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),)),
                  ),
                  Positioned(
                    bottom: 2,
                    left: 7,
                    child: Container(
                      child: Text("BR", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],)
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
