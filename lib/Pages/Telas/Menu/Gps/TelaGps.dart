import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Gps extends StatefulWidget {
  @override
  _GpsState createState() => _GpsState();
}

class _GpsState extends State<Gps> {
  String _Latitude = "0";
  String _longitude = "0";
  String _precisao = "0";
  String _velocidade = "0";

  void Atualizacao() async {
    final posicao = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

    Timer.periodic(
      Duration(seconds: 1),
      (Timer t) {
        setState(
          () {
            _Latitude = posicao.latitude.toStringAsPrecision(5);
            _longitude = posicao.longitude.toStringAsPrecision(5);
            _precisao = posicao.accuracy.toStringAsPrecision(5);
            _velocidade = posicao.speed.toStringAsPrecision(1);
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Atualizacao();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localização"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              "imagens/assets/mapas.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Latitude:  $_Latitude",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          "Longitude:  $_longitude",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Precisão:  $_precisao m²",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          "Velocidade:  $_velocidade Km",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
