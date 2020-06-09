import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visto_soft/Pages/Telas/Home/Inspecao/widget/widget_placa.dart';
import 'package:visto_soft/Pages/Telas/Home/Inspecao/widget/widget_tile_foto.dart';


class TelaInspecao extends StatefulWidget {
  String placa;
  String foto = 'imagens/assets/carro.jpg';
  String titulo;
  String numeroos;

  List lista_fotos = ["PANORAMICA", "TRASEIRA", "LACRE TRASEIRO", "DIANTEIRA", "MOTOR", "CHASSI", "HORDROMETRO","CRLV","CNH","ETIQUETA",];

  TelaInspecao({this.placa, this.numeroos});

  @override
  _TelaInspecaoState createState() => _TelaInspecaoState();
}

class _TelaInspecaoState extends State<TelaInspecao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.numeroos}".toUpperCase()),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          widget_placa(
            placa: widget.placa. toUpperCase(),
          ),
          Container(
            height: 550,
            child: GridView.builder(
                padding: EdgeInsets.all(10),
                itemCount: 7,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return widget_tile_foto(
                      titulo: widget.lista_fotos[index],
                      foto: widget.foto);
                }
                ),
          )
        ],
      ),
    );
  }
}
