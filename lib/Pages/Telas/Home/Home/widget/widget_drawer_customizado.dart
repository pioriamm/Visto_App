import 'package:flutter/material.dart';
import 'package:visto_soft/Helps/Helpers.dart';
import 'package:visto_soft/Pages/Telas/App/Login/TelaLogin.dart';
import 'package:visto_soft/Pages/Telas/Menu/Configuracao/TelaConfig.dart';
import 'package:visto_soft/Pages/Telas/Menu/Gps/TelaGps.dart';
import 'package:visto_soft/Pages/Telas/Menu/Usuario/TelaUsuario.dart';
import 'package:visto_soft/Pages/Telas/Menu/Versao/TelaVersao.dart';


class widget_drawer_customizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox( height: MediaQuery.of(context).padding.top,),
            Image.asset('imagens/assets/logovermelho.png', height: 200,),
            SizedBox( height: 70,),
            InkWell(
              onTap: () {
                MudarPagina(context, Usuario());
              },
              child: ListTile(
                title: Text(
                  "Usuário",
                  style: TextStyle(color: Colors.red),
                ),
                leading: Icon(
                  Icons.face,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                MudarPagina(context, Gps());
              },
              child: ListTile(
                title: Text(
                  "GPS",
                  style: TextStyle(color: Colors.red),
                ),
                leading: Icon(
                  Icons.pin_drop,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                MudarPagina(context, Configuracao());
              },
              child: ListTile(
                title: Text(
                  "Configuração",
                  style: TextStyle(color: Colors.red),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                MudarPagina(context, VersaoPagina());
              },
              child: ListTile(
                title: Text(
                  "Versão",
                  style: TextStyle(color: Colors.red),
                ),
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox( height: 150,),
            InkWell(
              onTap: () {
                MudarPagina(context, LoginScream());
              },
              child: ListTile(
                title: Text(
                  "Sair",
                  style: TextStyle(color: Colors.green),
                ),
                leading: Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
