import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:visto_soft/Pages/Telas/Home/Home/widget/widget_custon_botao.dart';
import 'package:visto_soft/Pages/Telas/Home/Home/widget/widget_drawer_customizado.dart';
import 'package:visto_soft/Pages/Telas/Home/Home/widget/widget_ultimas_noticias.dart';
import 'package:visto_soft/Pages/Telas/Home/Vistoria/TelaVistoria.dart';

import 'package:transparent_image/transparent_image.dart';

class inspecao extends StatefulWidget {
  @override
  _inspecaoState createState() => _inspecaoState();
  List<DocumentSnapshot> imagens;
}

class _inspecaoState extends State<inspecao> {
  PageController controlepagina = PageController();
  int next = 0;
  int proxpagina = 0;

  @override
  void initState() {
    controlepagina.addListener(() {
      setState(() {
        next = controlepagina.page.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: widget_drawer_customizado(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[

            //carrocel
            Positioned(
              top: 120,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder<QuerySnapshot>(
                  future:
                      Firestore.instance.collection("noticias").getDocuments(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Container(
                          height: 10,
                          width: 10,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                          ),
                        ),
                      );
                    } else {
                      List<DocumentSnapshot> documentos = snapshot.data.documents;
                      return PageView.builder(
                        controller: controlepagina,
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, snapshot) {
                          return Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                image: '${documentos[next].data['noticia']}', fit: BoxFit.cover,)
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
            //pesquisa
            widget_ultimas_noticias(nomeempresa: "MARCE",),
            //botoes
            Positioned(
              bottom: 40,
              child: Column(
                children: <Widget>[
                  widget_custon_botao(
                    width: 330,
                    heigth: 80,
                    label: "VISTORIA NA BASE",
                    pagina: TelaVistoria(nomedapagina: "VISTORIA NA BASE",),
                    colors: Colors.red,
                  ),
                  widget_custon_botao(
                    width: 330,
                    heigth: 80,
                    label: "VISTORIA MÓVEL",
                    pagina: TelaVistoria(
                      nomedapagina: "VISTORIA MÓVEL",
                    ),
                    colors: Colors.red,
                  ),
                  widget_custon_botao(
                    width: 330,
                    heigth: 80,
                    label: "VISTORIA MÓVEL POR CHASSI \n(MERA INDENTIFICAÇÃO)",
                    pagina: TelaVistoria(
                      nomedapagina: "VISTORIA MÓVEL POR CHASSI",
                    ),
                    colors: Colors.red,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
