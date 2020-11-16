
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'InicioPaciente.dart';
import 'InicioProfesional.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
  TextEditingController emailTextControler;
  TextEditingController contrasenaTextControler;

    return Scaffold(
      backgroundColor: Color(0xff175676),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "¡Bienvenido a Health Safe!",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: SvgPicture.asset(
                    'assets/svg/HealSafeLogo.svg',
                    height: 220,
                  ),
                ),
                GestureDetector(onTap:()=>{_showInicioPaciente(context)},
                                                  child: Text(
                                    "Estamos aquí para cuidarte.",
                                    style: TextStyle(fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailTextControler,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    hintText: "example@utn.com",
                                    labelStyle: TextStyle(color: Colors.white),
                                    hintStyle: TextStyle(color: Colors.white),
                                    fillColor: Colors.white,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: contrasenaTextControler,
                                  decoration: InputDecoration(
                                    labelText: "Contraseña",
                                    labelStyle: TextStyle(color: Colors.white),
                                    fillColor: Colors.white,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                RaisedButton(
                                    padding: EdgeInsets.symmetric(horizontal: 50),
                                    child: Text(
                                      "Iniciar Sesión",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff0e93b9),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    onPressed: () => {_showInicioProfesional(context)}), //Muestra el inicio de profesional por ahora
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "¿No tienes cuenta aún?",
                                      style: TextStyle(fontSize: 16, color: Colors.white),
                                    ),
                                    FlatButton(
                                        child: Text(
                                          "Regístrate",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff0e93b9),
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                        onPressed: () => {}),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                
                  _showInicioProfesional(BuildContext context) {
                    final route = MaterialPageRoute(builder: (BuildContext context){
                      return InicioProfesional();
                    });
                    
                    Navigator.of(context).push(route);
                  }
                
                  _showInicioPaciente(BuildContext context) {
                    final route = MaterialPageRoute(builder: (BuildContext context){
                      return InicioPaciente();
                    });
                    
                    Navigator.of(context).push(route);
                  }
}
