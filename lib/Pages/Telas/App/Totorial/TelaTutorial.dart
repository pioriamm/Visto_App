import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visto_soft/Pages/Telas/App/Login/TelaLogin.dart';
import 'package:visto_soft/Pages/Telas/App/Totorial/widget/widget_slideTile.dart';



class TutorialScream extends StatefulWidget {
  @override
  _TutorialScreamState createState() => _TutorialScreamState();
}

class _TutorialScreamState extends State<TutorialScream> {

  final PageController pg = PageController();

  int next = 0;
  int proxpagina = 0;

  var _listaSlide = [
    {'id': 0, 'imagem': 'imagens/assets/filosofia.png', 'titulo': 'FILOSOFIA' , 'descricao': 'Oferecer soluções de informática para a área veicular com qualidade e eficiência, alinhadas a crescente evolução tecnológica atuando em todo território Nacional, contribuindo de forma responsável com o atendimento dos requisitos legais na preservação da segurança das pessoas e o respeito a vida, visando sempre o aumento de produtividade e competitividade de nossos clientes.'},
    {'id': 1, 'imagem': 'imagens/assets/corpotecnico.png', 'titulo': 'CORPO TÉCNICO' , 'descricao': 'Prezando sempre pelo conhecimento, atualmente o Grupo Otimiza conta com um corpo profissional altamente qualificado com engenheiros e especialistas em software.'},
    {'id': 2, 'imagem': 'imagens/assets/missao.png', 'titulo': 'MISSÃO' , 'descricao': 'Oferecer soluções de informática para a área veicular com qualidade e eficiência, alinhadas a crescente evolução tecnológica atuando em todo território Nacional, contribuindo de forma responsável com o atendimento dos requisitos legais na preservação da segurança das pessoas e o respeito a vida, visando sempre o aumento de produtividade e competitividade de nossos clientes.'},
    {'id': 3, 'imagem': 'imagens/assets/valores.png', 'titulo': 'VALORES' , 'descricao': 'Dedicação ao cliente, Comprometimento, Ética, Iniciativa e Responsabilidade.'},
    {'id': 4, 'imagem': 'imagens/assets/visao.png', 'titulo': 'VISÃO' , 'descricao': 'Ser referência em TI , desenvolvendo e mantendo produtos inovadores em diferentes segmentos da área veicular no mercado Nacional.'},
  ];

  @override
  void initState() {
    pg.addListener(() {
      next = pg.page.round();
      setState(() {
        proxpagina = next;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
        Expanded(
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pg,
            itemCount: _listaSlide.length,
            itemBuilder: (context, index) {
              return widget_slideTile(
                imagem: _listaSlide[index]['imagem'],
                  titulo: _listaSlide[index]['titulo'],
                  descricao: _listaSlide[index]['descricao'],
              );
            },
          ),
      ),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox( width: 50,),
          _bolinhas(),
          FlatButton(
              onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context)=> LoginScream(),),),
              child: Container(
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Center(child: Text("PULAR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
          ),
        ],
      ),
          SizedBox(height: MediaQuery.of(context).padding.top,),
        ],
      ),
    );
  }

  Widget _bolinhas() {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _listaSlide.map((i) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: next == i['id'] ? Colors.white : Colors.red,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.red),
            ),
          );
        }).toList(),
      ),
    );
  }
}
