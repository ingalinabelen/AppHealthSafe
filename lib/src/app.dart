import 'package:flutter/material.dart';
import 'package:health_safe/src/screens/InicioPaciente.dart';
import 'package:health_safe/src/screens/InicioProfesional.dart';
import 'package:health_safe/src/screens/ListaProfesionales.dart';
import 'package:health_safe/src/screens/MisTurnos.dart';
import 'package:health_safe/src/screens/SacarTurno.dart';
import 'screens/HistoriaClinica.dart';
import 'screens/InicioSesion.dart';
import 'screens/PerfilPaciente.dart';
import 'screens/PrescripcionMedica.dart';
import 'screens/RegistrarEpisodio.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Health Safe', //título de la aplicación al minimizar.
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "/",
        routes: {
          "/": (BuildContext context) => /*InicioPaciente(), */InicioSesion(),
          "/inicioPaciente": (BuildContext context) => InicioPaciente(),
          "/inicioProfesional": (BuildContext context) => InicioProfesional(),
          "/sacarTurno": (BuildContext context) => SacarTurno(),
          "/listaProfesionales": (BuildContext context) => ListaProfesionales(),
          "/misTurnos": (BuildContext context) => MisTurnos(),
          "/perfilPaciente": (BuildContext context) => PerfilPaciente(),
          "/historiaClinica": (BuildContext context) => HistoriaClinica(),
          "/RegistrarEpisodio": (BuildContext context) => RegistrarEpisodio(),
          "/prescripcionMedica": (BuildContext context) => PrescripcionMedica(),
        });
  }
}
