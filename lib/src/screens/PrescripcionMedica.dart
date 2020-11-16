import 'package:flutter/material.dart';

import '../widgets/appBarUsuario.dart';
import '../widgets/drawerProfesional.dart';

class PrescripcionMedica extends StatefulWidget {
  PrescripcionMedica({Key key}) : super(key: key);

  @override
  _PrescripcionMedicaState createState() => _PrescripcionMedicaState();
}

class _PrescripcionMedicaState extends State<PrescripcionMedica> {
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
              "Crear Prescripcion Medica",
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
                      content: Text('Se creó una Prescripcion Medica'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Aceptar'),
                          onPressed: () => {_showPerfilPaciente(context)},
                        )
                      ]),
                );
              }),
        ],
      ),
    );
  }

  _showPerfilPaciente(BuildContext context) {
    Navigator.of(context).pop();
  }


}



