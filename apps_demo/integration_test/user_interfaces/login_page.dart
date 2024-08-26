import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class LoginPage {
  static final txtUsername = find.byKey(const Key('username'));
  static final txtPassword = find.byKey(const Key('password'));
  static final btnLogin = find.text('Iniciar Sesión');
  static final txtErrorLogin = find.text('Credenciales incorrectas');
}
