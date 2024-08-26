import 'package:flutter_test/flutter_test.dart';
import 'task.dart';

class EnterLoginTask implements Task {
  final String text;
  final Finder finder;

  EnterLoginTask(this.text, this.finder);
  @override
  Future<void> performAs(WidgetTester actor) async {
    await actor.pumpAndSettle();
    await actor.enterText(finder, text);
  }
}
