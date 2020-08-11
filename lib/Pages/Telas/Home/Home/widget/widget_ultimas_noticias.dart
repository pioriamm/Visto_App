import 'dart:ui';

import 'package:flutter/material.dart';
import 'file:///C:/Users/piori/AndroidStudioProjects/visto_soft/lib/Pages/Telas/Home/Home/widget/widget_botton_sheets.dart';

class widget_ultimas_noticias extends StatelessWidget {
  String nomeempresa;

  widget_ultimas_noticias({this.nomeempresa});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          decoration: BoxDecoration(),
          height: 70,
          width: MediaQuery.of(context).size.width - 40,
          child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 2, sigmaY: 5),
            child: Container(color: Colors.grey.withOpacity(0.3),
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Builder(
                        builder: (context) => Container(
                          height: 35,
                          width: 35,
                          child: FlatButton(
                            onPressed: () => Scaffold.of(context).openDrawer(),
                            child: Icon(
                              Icons.menu,
                              color: Colors.black54,
                            ),),
                        ),
                      ),
                      Text(
                        "ÚLTIMAS NOTICIAS", textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Builder(
                        builder: (context) => Container(
                          height: 35,
                          width: 35,
                          child: InkWell(
                            onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return widget_botton_sheets();
                              },
                            ),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffF0F8FF),
                              radius: 35,
                              child: Center(
                                child: Container(
                                    height: 20 ,
                                    width: 35,
                                    child:Text(nomeempresa.substring(0,2), textAlign: TextAlign.center,)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
