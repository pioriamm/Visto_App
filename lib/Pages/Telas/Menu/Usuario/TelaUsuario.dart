import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visto_soft/Pages/Telas/Menu/Usuario/widget/widget_tile_customizada.dart';


class Usuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil do Usuário"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //titulio
                
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 200,
                      child: Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(3, 10),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Container(height: 100, width:100,
                            child: Image.asset("imagens/assets/logobranco.png",),
                            ),
                          ],)
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                        right: 45,
                        child: Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Icon(Icons.camera_alt, color: Colors.white,),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
                SizedBox( height: 70,),
                widget_tile_customizada(Icons.business, "RASÃO SOCIAL", "OTIMIZA UGC CONSULTORIA EM TECNOLOGIA DA INFORMAÇÃO LTDA"),
                widget_tile_customizada(Icons.assignment_ind, "CNPJ", "12.244.431/0001-82"),
                widget_tile_customizada(Icons.email, "E-MAIL", "inspecao@otimizati.com"),
                widget_tile_customizada(Icons.phone, "TELEFONE", "31 3339-4900"),
                widget_tile_customizada(Icons.smartphone, "CELULAR", "31 99999-1965"),
                widget_tile_customizada(Icons.location_on, "MUNICÍPIO / UF", "BELO HORIZONTE / MG")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
