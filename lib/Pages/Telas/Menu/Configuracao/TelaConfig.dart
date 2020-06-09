import 'package:flutter/material.dart';

class Configuracao extends StatefulWidget {
  @override
  _ConfiguracaoState createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONFIGURAÇÃO"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              //camera
              Card(
                elevation: 10,
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text("CÂMERA"),
                  leading: Icon( Icons.camera_alt, size: 50, color: Colors.red, ),
                  children: <Widget>[
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.aspect_ratio),
                      title: Text('Utlizar tela de câmera do aplicativo'),
                      value: false,
                    ),
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.autorenew),
                      title: Text('Habilitar confirmação automática'),
                      value: false,
                    ),
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.remove_red_eye),
                      title: Text('Habilitar visualização após captura'),
                      value: false,
                    ),
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.vibration),
                      title: Text('Habilitar vibração após captura'),
                      value: false,
                    ),
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.crop_original),
                      title: Text('Habilitar clique na tela para a captura'),
                      value: false,
                    ),
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.record_voice_over),
                      title: Text('Habilitar comando de voz'),
                      value: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //vistoria
              Card(
                elevation: 10,
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text("VISTORIA"),
                  leading: Icon( Icons.assignment, size: 50, color: Colors.red, ),
                  children: <Widget>[
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.loop),
                      title: Text('Atualizar Checklist'),
                      value: false,
                    ),
                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.list),
                      title: Text('Atualizar Listas'),
                      value: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //manutenção
              Card(
                elevation: 10,
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text("MANUTENÇÃo"),
                  leading: Icon( Icons.settings, size: 50, color: Colors.red, ),
                  children: <Widget>[

                    CheckboxListTile(
                      onChanged: (bool value) {},
                      secondary: Icon(Icons.wallpaper),
                      title: Text('Descartar fotos não vinculadas'),
                      value: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
