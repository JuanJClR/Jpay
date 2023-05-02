import 'package:flutter/material.dart';
import 'consulta.dart';
import 'deposito.dart';
import 'envio.dart';
import 'retiro.dart';
import 'login.dart';
import 'menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}