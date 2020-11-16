import 'package:flutter/material.dart';

import '../widgets/appBarUsuario.dart';
import '../widgets/drawerProfesional.dart';
import 'HistoriaClinica.dart';

class RegistrarEpisodio extends StatefulWidget {
  RegistrarEpisodio({Key key}) : super(key: key);

  @override
  _RegistrarEpisodioState createState() => _RegistrarEpisodioState();
}

class _RegistrarEpisodioState extends State<RegistrarEpisodio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUsuario(context),
      drawer: drawerProfesional(context),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 50),
            color: Colors.blueAccent,
            child: Text(
              "Registrar Episodio",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Text(
            "Paciente: ",
            style: TextStyle(fontSize: 18),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              autofocus: true,
              style: TextStyle(fontSize: 18),
            ),
          ),
          RaisedButton(
              disabledColor: Colors.amber,
              child: Text("Aceptar y Enviar",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              splashColor: Colors.amber,
              color: Colors.blueAccent,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                      title: Text('Notificacion'),
                      content: Text('Se registró un nuevo episodio'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Aceptar'),
                          onPressed: () => {print("hola")},
                        )
                      ]),
                );
              }),
          RaisedButton(
              disabledColor: Colors.amber,
              child: Text("Cancelar",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              splashColor: Colors.amber,
              color: Colors.blueAccent,
              onPressed: () => {_showHistoriaClinica(context)}),
        ],
      ),
    );
  }

  void _showHistoriaClinica(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return HistoriaClinica();
    });

    Navigator.of(context).push(route);
  }
}
