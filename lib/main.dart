import 'package:flutter/material.dart';
import 'package:jpay/consulta.dart';
import 'package:jpay/deposito.dart';
import 'package:jpay/envio.dart';
import 'package:jpay/retiro.dart';

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
      home: EnvioPage(),
    );
  }
}