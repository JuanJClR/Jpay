import 'package:flutter/material.dart';
import 'package:jpay/depositar.dart';

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
      home: DepositarPage(),
    );
  }
}