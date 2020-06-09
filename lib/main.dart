import 'package:flutter/material.dart';
import 'Pages/Telas/App/Splash/TelaSplash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visto Soft',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ScreamSplash(),
    );
  }
}