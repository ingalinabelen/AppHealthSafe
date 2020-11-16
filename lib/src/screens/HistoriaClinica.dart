import 'package:flutter/material.dart';

import '../widgets/appBarUsuario.dart';
import '../widgets/drawerProfesional.dart';
import 'RegistrarEpisodio.dart';

class HistoriaClinica extends StatefulWidget {
  HistoriaClinica({Key key}) : super(key: key);

  @override
  _HistoriaClinicaState createState() => _HistoriaClinicaState();
}

class _HistoriaClinicaState extends State<HistoriaClinica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarUsuario(context),
        drawer: drawerProfesional(context),
        body: Column(children: [
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 50),
            color: Colors.blueAccent,
            child: Text(
              "Historia Clinica",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  child: Row(children: [
                Container(
                    child: Column(children: [
                  IconButton(
                      color: Colors.blueAccent,
                      onPressed: () => {},
                      icon: Icon(Icons.filter))
                ])),
                Container(
                    child: Column(children: [
                  GestureDetector(
                      onTap: () => {print("filtrar")}, child: Text("Filtrar"))
                ])),
                Container(
                    child: Column(children: [
                  IconButton(
                      color: Colors.blueAccent,
                      onPressed: () => {_showRegistrarEpisodio(context)},
                      icon: Icon(Icons.add))
                ])),
                Container(
                    child: Column(children: [
                  GestureDetector(
                      onTap: () => {_showRegistrarEpisodio(context)},
                      child: Text("Crear un nuevo episodio"))
                ])),
              ])),
            ],
          ),
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 50),
            color: Colors.lightBlue[300],
            child: Text(
              "Seleccione aquel episodio que desea consultar",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
              width: 600,
              height: 607,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                    ListView(scrollDirection: Axis.vertical, children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [Text("#10")]),
                      ),
                      Container(width: 1, height: 100, color: Colors.grey[500]),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Fecha 14/10/2020"),
                              Text("Motivo de la visita: Consulta"),
                              Container(
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                      "Descripción: Lorem ipsum dolor sit amet, ct elit."))
                            ]),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [Text("#9")]),
                      ),
                      Container(width: 1, height: 100, color: Colors.grey[500]),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Fecha 14/8/2020"),
                              Text("Motivo de la visita: Consulta"),
                              Container(
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                      "Descripción: Lorem ipsum dolor sit amet, ct elit."))
                            ]),
                      ),
                    ],),
                      
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [Text("#8")]),
                      ),
                      Container(width: 1, height: 100, color: Colors.grey[500]),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Fecha 14/6/2020"),
                              Text("Motivo de la visita: Consulta"),
                              Container(
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                      "Descripción: Lorem ipsum dolor sit amet, ct elit."))
                            ]),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [Text("#7")]),
                      ),
                      Container(width: 1, height: 100, color: Colors.grey[500]),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Fecha 14/3/2020"),
                              Text("Motivo de la visita: Consulta"),
                              Container(
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                      "Descripción: Lorem ipsum dolor sit amet, ct elit."))
                            ]),
                      ),
                    ],),
    
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [Text("#6")]),
                      ),
                      Container(width: 1, height: 100, color: Colors.grey[500]),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Fecha 14/12/2019"),
                              Text("Motivo de la visita: Consulta"),
                              Container(
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                      "Descripción: Lorem ipsum dolor sit amet, ct elit."))
                            ]),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [Text("#5")]),
                      ),
                      Container(width: 1, height: 100, color: Colors.grey[500]),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Fecha 14/8/2019"),
                              Text("Motivo de la visita: Consulta"),
                              Container(
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                      "Descripción: Lorem ipsum dolor sit amet, ct elit."))
                            ]),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                ]),
              )),
        ]));
  }

  _showRegistrarEpisodio(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return RegistrarEpisodio();
    });
    Navigator.of(context).push(route);
  }
}
