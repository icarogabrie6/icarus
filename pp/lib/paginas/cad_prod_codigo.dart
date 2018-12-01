import 'package:flutter/material.dart';
import 'package:pp/main.dart';

class CadProdCodigoScreen extends StatefulWidget {
  @override
  _CadProdCodigoScreenState createState() => new _CadProdCodigoScreenState();
}

class _CadProdCodigoScreenState extends State<CadProdCodigoScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CADASTRAR PRODUTO'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              child: FormUI(),
            ),
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

// Here is our Form UI
  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Nome do Produto'),
          keyboardType: TextInputType.text,
            validator: (value) {
              if (value.isEmpty) {
                return 'Por favor campo obrigatório';
              }
            },
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Código'),
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor campo obrigatório';
            }
            if (int.tryParse(value.toString()) == null) {
              return 'Apenas numeros';
            }
          },
        ),
        new SizedBox(
          height: 10.0,
        ),
        new RaisedButton(
          onPressed: _validateInputs,
          child: new Text('BUSCAR'),
          color: Theme.of(context).accentColor,
          elevation: 4.0,
          splashColor: Colors.lightGreen,
        )
      ],
    );
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Salvando dados')));
    }

}

}