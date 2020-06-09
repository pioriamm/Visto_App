import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class widget_custon_textField extends StatefulWidget {

   double radioborda = 10;
   bool obscure = true;
   IconData iconeemail, iconesenha;
   String hintemail, hintsenha;

  @override
  _widget_custon_textFieldState createState() => _widget_custon_textFieldState();
}

class _widget_custon_textFieldState extends State<widget_custon_textField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 310,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(widget.radioborda),
          topRight: Radius.circular(widget.radioborda),
          bottomLeft: Radius.circular(widget.radioborda),
          bottomRight: Radius.circular(widget.radioborda),
        ),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.email),
                  hintText: "E-mail"),
            ),
            Divider( height: 2, color: Colors.grey,),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.lock),
                  hintText: "Senha"),
                  obscureText: true,
            ),
          ],
        ),
      )
    );
  }
}
