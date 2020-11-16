import 'package:flutter/material.dart';
import 'package:health_safe/src/screens/HistoriaClinica.dart';
import 'package:health_safe/src/screens/PrescripcionMedica.dart';

import '../widgets/appBarUsuario.dart';
import '../widgets/drawerProfesional.dart';

class PerfilPaciente extends StatefulWidget {
  PerfilPaciente({Key key}) : super(key: key);

  @override
  _PerfilPacienteState createState() => _PerfilPacienteState();
}

class _PerfilPacienteState extends State<PerfilPaciente> {
  @override
  


  Widget build(BuildContext context) {
    
    PerfilPacienteArgumentos argumentos =
        ModalRoute.of(context).settings.arguments;
    String nombreApellido = argumentos.nombreApellido;
    String edad = argumentos.edad;
    String ciudad = argumentos.ciudad;
    String obraSocial = argumentos.obraSocial;

    return Scaffold(
        appBar: appBarUsuario(context),
        drawer: drawerProfesional(context),
        body: ListView(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("" + nombreApellido)]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text(edad + " años")]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("Vive en " + ciudad)]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("Obra Social: " + obraSocial)]),
          RaisedButton(
            disabledColor: Colors.amber,
            child: Text("Ver Historia Clinica",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            splashColor: Colors.amber,
            color: Colors.blueAccent,
            onPressed: () => {_showHistoriaClinica(context)},
          ),
          RaisedButton(
            disabledColor: Colors.amber,
            child: Text("Crear Prescripcion Medica",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            splashColor: Colors.amber,
            color: Colors.blueAccent,
            onPressed: () => {_showPrescripcionMedica(context)},
          ),
          RaisedButton(
            disabledColor: Colors.amber,
            child: Text("Crear Indicacion Medica",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            splashColor: Colors.amber,
            color: Colors.blueAccent,
            onPressed: () {},
          )
        ] //children
            ));
  }

  _showHistoriaClinica(BuildContext context) {
   final route = MaterialPageRoute(builder: (BuildContext context){
      return HistoriaClinica();
    });
    
    Navigator.of(context).push(route);
  }


  _showPrescripcionMedica(BuildContext context) {
     final route = MaterialPageRoute(builder: (BuildContext context){
      return PrescripcionMedica();
    });
    
    Navigator.of(context).push(route);
   
  }
}

class PerfilPacienteArgumentos {
  String nombreApellido;
  String obraSocial;
  String edad;
  String ciudad;
  PerfilPacienteArgumentos(
      {this.nombreApellido, this.obraSocial, this.edad, this.ciudad});
}
