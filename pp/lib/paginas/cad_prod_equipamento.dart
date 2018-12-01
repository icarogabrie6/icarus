import 'package:flutter/material.dart';

class CadProdCodigoScreen extends StatefulWidget {
  @override
  _CadProdCodigoScreenState createState() => new _CadProdCodigoScreenState();
}

class _CadProdCodigoScreenState extends State<CadProdCodigoScreen> {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('BUSCAR PRODUTOS'),
        ),
        body: new Container(
          margin: new EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Pc'),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Camas '),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Mouses'),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Mochilas '),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Carregadores'),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Teclados'),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Sabonete'),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Album'),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Central de ar'),
              ),
              ListTile(
                //leading: Icon(Icons.),
                title: Text('Chinelos'),
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green[800],
        accentColor: Colors.cyan[600],
      ),
    );
  }
}
