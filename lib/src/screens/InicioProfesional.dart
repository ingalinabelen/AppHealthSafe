import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_safe/src/screens/MisTurnos.dart';
import 'package:health_safe/src/widgets/appBarUsuario.dart';
import 'package:health_safe/src/widgets/drawerProfesional.dart';

class InicioProfesional extends StatelessWidget {
  const InicioProfesional({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUsuario(context),
      drawer: drawerProfesional(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "¡Bienvenido a Health Safe!",
              style: TextStyle(fontSize: 25),
            ),
            SvgPicture.asset(
              'assets/svg/HealSafeLogo.svg',
              height: 220,
              color: Colors.blue,
            ),
            Text(
              "Estamos aquí para cuidarte.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                color: Colors.lightBlue[800],
                child: Text(
                  "Mis turnos",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                onPressed: () => {_showMisTurnos(context)},
              ),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: Colors.red[800],
              child: Text(
                "Ingresar sala de emergencias",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
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
    );
  }

  void _showMisTurnos(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return MisTurnos();
    });
    
    Navigator.of(context).push(route);
  }
}
