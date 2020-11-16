import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_safe/src/widgets/appBarUsuario.dart';
import 'package:health_safe/src/widgets/drawerPaciente.dart';

class ListaProfesionales extends StatelessWidget {
  const ListaProfesionales({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUsuario(context),
      drawer: drawerPaciente(context),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: 1000,
              decoration: BoxDecoration(
                color: Colors.lightBlue[700],
              ),
              child: Text(
                "Gastroenterólogo en San Miguel de Tucumán",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/Filtrar.svg',
                          height: 50,
                          color: Color(0xff0e93b9),
                        ),
                        Text(
                          "Filtrar",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff0e93b9),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {},
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/Filtrar.svg',
                          height: 50,
                          color: Color(0xff0e93b9),
                        ),
                        Text(
                          "Ordenar",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff0e93b9),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  cardProfesional("María Juarez", "Gastroenterología",
                      "Clínica Mayo - 9 de julio 279", 1000),
                  cardProfesional("María Juarez", "Gastroenterología",
                      "Clínica Mayo - 9 de julio 279", 1000),
                  cardProfesional("María Juarez", "Gastroenterología",
                      "Clínica Mayo - 9 de julio 279", 1000),
                  cardProfesional("María Juarez", "Gastroenterología",
                      "Clínica Mayo - 9 de julio 279", 1000),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Card cardProfesional(nombre, especialidad, direccionClinica, precio) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://picsum.photos/200"),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$nombre",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "$especialidad",
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue),
                        Icon(Icons.star, color: Colors.blue),
                        Icon(Icons.star, color: Colors.blue),
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                        Text("100 opiniones"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text("$direccionClinica"),
            ],
          ),
          Text("Acepta consultas vía: Videollamada. Presencial."),
          Text("Precio de Consulta: \$$precio"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Ver turnos",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff0e93b9),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                onPressed: () => {},
              ),
            ],
          )
        ],
      ),
    ),
  );
}
