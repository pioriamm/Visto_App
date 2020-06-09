import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VersaoPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height/7,
              floating: true,
              pinned: true,

              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('imagens/assets/logobrancos.png', height: 10,),
                centerTitle: true,
                title: Text(
                  "Vistosoft App",
                ),
              ),
            ),
            SliverFillRemaining(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 5.0, bottom: 30),
                          child: Text(
                            "Sobre",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Otimiza UGC Consultoria em",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Tecnologia da Informação Ltda",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text(
                            "Versão",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.black,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, right: 30, left: 10),
                                  child: Text(
                                    "5.11.1.1438.596",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, right: 30, left: 10),
                                  child: Text(
                                    "link 3",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Image.asset('imagens/assets/logovermelho.png'),
                        ),
                      ),
                    ],
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
