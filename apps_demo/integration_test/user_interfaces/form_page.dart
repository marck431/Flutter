import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

class FormPage{
  static final btnSendForm = find.text('Enviar');
  static final txtNombre = find.byKey(const Key('Nombre'));
  static final txtApellido = find.byKey(const Key('Apellido'));
  static final txtCorreo = find.byKey(const Key('Correo'));
  static final txtCelular = find.byKey(const Key('Celular'));
}