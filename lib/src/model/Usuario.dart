import 'package:health_safe/src/model/enumerations/TipoUsuario.dart';

class Usuario {
  Usuario({email, password, tipouser});

  String email;
  String password;
  TipoUsuario tipouser;
}
