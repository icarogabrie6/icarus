import 'package:flutter/material.dart';
import 'package:pp/paginas/cad_prod_codigo.dart';
import 'package:pp/rotas.dart';

import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'IStock',
      theme: new ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.cyan[600],
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'IStock'),
      routes: <String, WidgetBuilder> {
        '/CadProdCodigoScreen': (BuildContext context) => new CadProdCodigoScreen()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer( _duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/CadProdCodigoScreen');
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      body: new Center(

        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
            'lib/images/istock.png',
            width: 250.0,
            height: 100.0,
            fit: BoxFit.scaleDown,
          ),
            new Image.asset(
              'lib/images/scan-stock.png',
              width: 250.0,
              height: 240.0,
              fit: BoxFit.scaleDown,
            ),
           // new Text(
             // '$_counter',
             // style: Theme.of(context).textTheme.display1,
            //),
          ],
        ),
      ),
     // floatingActionButton: new FloatingActionButton(
        //onPressed: _incrementCounter,
       //tooltip: 'Increment',
       // child: new Icon(Icons.add),
     // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
