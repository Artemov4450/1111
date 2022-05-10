import 'package:flutter/material.dart';
import 'package:flutter_application_construktor/pages/home.dart';
import 'package:flutter_application_construktor/pages/main_screen.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/todo': (context) => Home(),
      },
    ));
