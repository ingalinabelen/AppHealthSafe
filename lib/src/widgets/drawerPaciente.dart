import 'package:flutter/material.dart';

Widget drawerPaciente(BuildContext context) {
  //TODO: Recibir variables por parámetro.
  String name = "Gastón Medina";
  String email = "gnico_10@hotmail.com";
  String accountPicture = "https://picsum.photos/200";

  return Drawer(
    child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text("$name"),
        accountEmail: Text("$email"),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage("$accountPicture"),
        ),
      ),
      //TODO: Navegation.
      ListTile(
        title: Text(
          "Inicio",
          style: TextStyle(fontSize: 20),
        ),
        onTap: () => {},
      ),
      Divider(),
      ListTile(
        title: Text(
          "Mi cuenta",
          style: TextStyle(fontSize: 20),
        ),
        onTap: () => {},
      ),
      Divider(),
      ListTile(
        title: Text(
          "Mis turnos",
          style: TextStyle(fontSize: 20),
        ),
        onTap: () => {},
      ),
      Divider(),
      ListTile(
        title: Text(
          "Configuración",
          style: TextStyle(fontSize: 20),
        ),
        onTap: () => {},
      ),
      Divider(),
      ListTile(
        title: Text(
          "Ayuda y comentarios",
          style: TextStyle(fontSize: 20),
        ),
        onTap: () => {},
      ),
      Divider(),
      ListTile(
        title: Text(
          "Cerrar sesión",
          style: TextStyle(fontSize: 20),
        ),
        onTap: () => {},
      ),
      Divider(),
    ]),
  );
}
