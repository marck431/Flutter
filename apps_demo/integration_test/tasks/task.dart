import 'package:flutter_test/flutter_test.dart';

abstract class Task{
  Future<void> performAs(WidgetTester actor);
}