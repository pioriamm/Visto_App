import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visto_soft/Helps/Helpers.dart';
import 'package:visto_soft/Pages/Telas/Home/Inspecao/TelaInspecao.dart';
import 'package:visto_soft/Pages/Telas/Home/Vistoria/widget/widget_adicionar_placa.dart';
import 'package:visto_soft/Pages/Telas/Home/Vistoria/widget/widget_bloco_quantidade_inspecao.dart';
import 'package:visto_soft/Pages/Telas/Home/Vistoria/widget/widget_tile_inspecao.dart';

class TelaVistoria extends StatefulWidget {
  @override
  _TelaVistoriaState createState() => _TelaVistoriaState();

  String nomedapagina = "VISTORIA NA BASE";
  String valor;
  int val = 0;

  TelaVistoria({this.nomedapagina});
}

class _TelaVistoriaState extends State<TelaVistoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.nomedapagina),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              widget_adicionar_placa(tipovisotira: widget.nomedapagina,),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance
                            .collection("vistorias")
                            .document(widget.nomedapagina)
                            .collection("abertas")
                            .snapshots(),
                        builder: (contex, snapshot) {
                          List<DocumentSnapshot> documentos =
                              snapshot.data.documents;
                          return widget_bloco_quantidade_inspecao(
                            titulo: "Abertas",
                            quantidades: documentos.length == null
                                ? widget.val
                                : documentos.length.toString(),
                          );
                        }),
                    StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance
                            .collection("vistorias")
                            .document(widget.nomedapagina)
                            .collection("Iniciadas")
                            .snapshots(),
                        builder: (contex, snapshot) {
                          List<DocumentSnapshot> documentos =
                              snapshot.data.documents;
                          return widget_bloco_quantidade_inspecao(
                            titulo: "Iniciadas",
                            quantidades: documentos.length == null
                                ? widget.val
                                : documentos.length.toString(),
                          );
                        }),
                    StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance
                            .collection("vistorias")
                            .document(widget.nomedapagina)
                            .collection("Pend Envio")
                            .snapshots(),
                        builder: (contex, snapshot) {
                          List<DocumentSnapshot> documentos =
                              snapshot.data.documents;
                          return widget_bloco_quantidade_inspecao(
                            titulo: "Pend Env",
                            quantidades: documentos.length == null
                                ? widget.val
                                : documentos.length.toString(),
                          );
                        }),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: Text("Listas de Inspeções", style: TextStyle(fontSize: 25, color: Colors.red),),
              ),
              Container(
                height: 400,
                child: StreamBuilder<QuerySnapshot>(
                  stream: Firestore.instance
                      .collection("vistorias")
                      .document(widget.nomedapagina)
                      .collection("abertas")
                      .snapshots(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                        return Center(
                          child: Column(
                            children: <Widget>[
                              CircularProgressIndicator(),
                              Text("${snapshot.connectionState}"),
                            ],
                          ),
                        );
                      default:
                        List<DocumentSnapshot> documentos = snapshot.data.documents;
                        return documentos.length == 0
                            ? Container(
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("imagens/assets/vazio.png"),
                                  ],
                                ),
                              )
                            : ListView.builder(
                                itemCount: documentos.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      MudarPagina(
                                        context,
                                        TelaInspecao(
                                          numeroos:
                                              '${documentos[index].data["osnumero"]}',
                                          placa:
                                              '${documentos[index].data["placa"]}',
                                        ),
                                      );
                                    },
                                    child: widget_tile_inspecao(
                                      osnumero:
                                          '${documentos[index].data["osnumero"]}',
                                      tipovistoria:
                                          '${documentos[index].data["tipovisotoria"]}',
                                      placas:
                                          '${documentos[index].data["placa"]}',
                                      datahora:
                                          '${documentos[index].data["datahora"]}',
                                    ),
                                  );
                                },
                              );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
