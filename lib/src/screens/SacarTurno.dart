import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_safe/src/widgets/appBarUsuario.dart';
import 'package:health_safe/src/widgets/drawerPaciente.dart';

class SacarTurno extends StatefulWidget {
  SacarTurno({Key key}) : super(key: key);

  @override
  _SacarTurnoState createState() => _SacarTurnoState();
}

class _SacarTurnoState extends State<SacarTurno> {
  List ciudades = [
    "San Miguel de Tucumán",
    "Yerba Buena",
    "Alderetes",
    "Lules",
    "Concepción",
    "Tafí Viejo",
    "Banda del Río Salí",
    "Monteros"
  ];
  List especialidades = [
    "Gastroenterólogo",
    "Psicólogo",
    "Neurólogo",
    "Dermatólogo",
    "Oftalmólogo",
    "Cardiólogo",
    "Nutricionista"
  ];

  List<DropdownMenuItem<String>> _dropDownMenuItemsCiudades;
  List<DropdownMenuItem<String>> _dropDownMenuItemsEspecialidades;

  String _currentCiudad;
  String _currentEspecialidad;

  @override
  void initState() {
    _dropDownMenuItemsCiudades = getDropDownMenuItemsCiudades();
    _currentCiudad = _dropDownMenuItemsCiudades[0].value;

    _dropDownMenuItemsEspecialidades = getDropDownMenuItemsEspecialidades();
    _currentEspecialidad = _dropDownMenuItemsEspecialidades[0].value;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUsuario(context),
      drawer: drawerPaciente(context),
      backgroundColor: Colors.lightBlue[700],
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/svg/Filtrar.svg',
                    height: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Sacar Turno",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "Más de 1.000 profesionales están aquí para ayudarte. \nEncontrá a los especialistas de tu ciudad y solicitá el turno que más te convenga.",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ciudad",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: DropdownButton(
                      items: _dropDownMenuItemsCiudades,
                      value: _currentCiudad,
                      onChanged: changedDropDownItemCiudad,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Especialidad",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: DropdownButton(
                      items: _dropDownMenuItemsEspecialidades,
                      value: _currentEspecialidad,
                      onChanged: changedDropDownItemEspecialidad,
                    ),
                  ),
                ],
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Text(
                  "Buscar especialistas",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff0e93b9),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsCiudades() {
    List<DropdownMenuItem<String>> items = new List();

    for (String ciudad in ciudades) {
      items.add(
        new DropdownMenuItem(
          value: ciudad,
          child: new Text(ciudad),
        ),
      );
    }

    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsEspecialidades() {
    List<DropdownMenuItem<String>> items = new List();

    for (String especialidad in especialidades) {
      items.add(
        new DropdownMenuItem(
          value: especialidad,
          child: new Text(especialidad),
        ),
      );
    }

    return items;
  }

  void changedDropDownItemCiudad(String selectedCiudad) {
    setState(() {
      _currentCiudad = selectedCiudad;
    });
  }

  void changedDropDownItemEspecialidad(String selectedEspecialidad) {
    setState(() {
      _currentEspecialidad = selectedEspecialidad;
    });
  }
}
