import 'package:flutter/material.dart';
import 'package:health_safe/src/screens/PerfilPaciente.dart';

import '../widgets/appBarUsuario.dart';
import '../widgets/drawerProfesional.dart';

class MisTurnos extends StatefulWidget {
  MisTurnos({Key key}) : super(key: key);

  @override
  _MisTurnosState createState() => _MisTurnosState();
}

class _MisTurnosState extends State<MisTurnos> {
  String nombreApellido1 = "Facundo Gustavo Pereyra";
  String obraSocial1 = "Subsidio de Salud";
  String edad1 = "25";
  String ciudad1="San Miguel de Tucuman";
  String nombreApellido2 = 'Maria Paula Gutierrez Salas  ';
  String obraSocial2 = 'Swiss Medical  ';
  String edad2="29";
  String ciudad2="San Miguel de Tucuman";

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);

    return Scaffold(
      appBar: appBarUsuario(context),
      drawer: drawerProfesional(context),
      body: Column(
        children: <Widget>[
          //titulo mis turnos
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 50),
            color: Colors.blueAccent,
            child: Text(
              "Mis turnos",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => {print("atras")},
              ),
              Text(
                  date.day.toString() +
                      "/" +
                      date.month.toString() +
                      "/" +
                      date.year.toString(),
                  style: TextStyle(
                    fontSize: 18,
                  )),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () => {print("atras")},
              ),
              IconButton(
                icon: Icon(Icons.calendar_today_sharp),
                onPressed: () => {print("atras")},
              ),
            ],
          ),
          //Registro de los turnos

          new DataTable(
            dataRowHeight: 100,
            headingRowHeight: 70,
            columns: [
              DataColumn(
                  label: Text("Horario", style: TextStyle(fontSize: 16))),
              DataColumn(
                  label: Text("Paciente", style: TextStyle(fontSize: 16))),
            ],
            rows: [
              DataRow(selected: true, cells: [
                DataCell(Text("16:30", style: TextStyle(fontSize: 25))),
                DataCell(Text(
                    '' +
                        nombreApellido1 +
                        ' '
                            ' Motivo de la Visita: Consulta'
                            ' Modalidad: Videollamada  '
                            ' Obra Social: ' +
                        obraSocial1 +
                        ' '
                            ' Estado: Reservado ',
                    style: TextStyle(fontSize: 16))),
              ]),
            ],
          ),
          RaisedButton(
            disabledColor: Colors.amber,
            child: Text("Ver Perfil del Paciente",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            splashColor: Colors.amber,
            color: Colors.blueAccent,
            onPressed: () => {_showPerfilPaciente1(context)},
          ),
          RaisedButton(
            disabledColor: Colors.amber,
            child: Text("Reprogramar Turno",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            splashColor: Colors.amber,
            color: Colors.blueAccent,
            onPressed: () => {print("reprogrmar turno")},
          ),
          new DataTable(
            dataRowHeight: 100,
            headingRowHeight: 10,
            columns: [
              DataColumn(label: Text("")),
              DataColumn(label: Text("")),
            ],
            rows: [
              DataRow(selected: true, cells: [
                DataCell(Text("17:00", style: TextStyle(fontSize: 25))),
                DataCell(Text(
                    '' +
                        nombreApellido2 +
                        ' ' //Facundo Gustavo Pereyra
                            ' Motivo de la Visita: Consulta'
                            ' Modalidad: Videollamada  '
                            ' Obra Social: ' +
                        obraSocial2 +
                        ' '
                            ' Estado: Reservado ',
                    style: TextStyle(fontSize: 16))),
              ]),
            ],
          ),
          RaisedButton(
            disabledColor: Colors.amber,
            child: Text("Ver Perfil del Paciente",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            splashColor: Colors.amber,
            color: Colors.blueAccent,
            onPressed: () => {_showPerfilPaciente2(context)},
          ),
          RaisedButton(
            disabledColor: Colors.amber,
            child: Text("Reprogramar Turno",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            splashColor: Colors.amber,
            color: Colors.blueAccent,
            onPressed: () => {print("reprogramar turno")},
          ),
        ],
      ),
    );
  }

  void _showPerfilPaciente1(BuildContext context) {
    Navigator.of(context).pushNamed("/perfilPaciente",
        arguments: PerfilPacienteArgumentos(
            nombreApellido: this.nombreApellido1,
            obraSocial: this.obraSocial1, edad: this.edad1, ciudad: this.ciudad1));
  }

  _showPerfilPaciente2(BuildContext context) {
       Navigator.of(context).pushNamed("/perfilPaciente",
        arguments: PerfilPacienteArgumentos(
            nombreApellido: this.nombreApellido2,
            obraSocial: this.obraSocial2, edad: this.edad2, ciudad: this.ciudad2));
  }
}
