import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class widget_custon_botao extends StatelessWidget {
  double heigth, width;
  String label;
  Widget pagina;
  MaterialColor colors;

  widget_custon_botao({this.heigth, this.width, this.label, this.pagina, this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (Builder) => pagina));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Container(
            height: heigth,
            width: width,
            child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 2, sigmaY: 5),
              child: Container(color: colors == null ? Colors.grey.withOpacity(0.3) : colors,
                child: Center(
                    child: Text(
                      label,
                      style: TextStyle(fontSize: 20, color: colors != null ? Colors.white : Colors.black54),
                      textAlign: TextAlign.center,
                    )),
              ),),
          ),
        ),
      ),
    );
  }
}
