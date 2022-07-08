import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  var _switchValue = false;
  var _sliderValue = .3;
  var _colorit = Colors.red;
  final _colorit1 = Colors.amber;
  final _colorit2 = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Цвета'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 200,
              width: 400,
              color: _colorit,
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Form(
                key: _formKey,
                child: Row(children: [
                  Switch(
                      value: _switchValue,
                      onChanged: (bool inValue) {
                        setState(() {
                          _switchValue = inValue;
                          if (_switchValue = false) {
                            _colorit = Colors.amber;
                          } else {
                            _colorit = Colors.blue;
                          }
                        });
                      }),
                  Slider(
                      min: 0,
                      max: 20,
                      value: _sliderValue,
                      onChanged: (inValue) {
                        setState(() {
                          _sliderValue = inValue;
                        });
                      }),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
