import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class Data {
  dynamic name = '';
}

class _MyAppState extends State<MyApp> {
  String _a = '';
  void ddd() {
    setState(() {
      if (_data.name == 5) {
        _a = 'Вы угадали';
      } else {
        _a = 'Попробуйте еще';
      }
      ;
    });
  }

  Data _data = new Data();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Угадай число'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(50),
              alignment: Alignment.center,
              height: 200,
              width: 300,
              color: Colors.amber,
              child: Text(
                '$_a',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Form(
                key: this._formKey,
                child: Column(children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onSaved: (dynamic inValue) {
                      this._data.name = inValue;
                    },
                  ),
                  RaisedButton(
                      child: Text('Нажми'),
                      onPressed: () {
                        _formKey.currentState?.save();
                        print(_data.name);
                        print(_a);
                        ddd();
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
