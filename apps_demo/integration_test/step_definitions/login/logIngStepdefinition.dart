// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
import '../../tasks/enter_login.dart';
import '../../user_interfaces/form_page.dart';
import '../../user_interfaces/login_page.dart';

StepDefinitionGeneric theUserEnterTheUsername() {
  return given1<String, FlutterWidgetTesterWorld>(
      "the user enter the username {string}", (username, context) async {
    final actor = context.world.rawAppDriver;
    await EnterLoginTask(username, LoginPage.txtUsername).performAs(actor);
  });
}

StepDefinitionGeneric theUserEnterThePassword() {
  return and1<String, FlutterWidgetTesterWorld>(
      "the user enter the password {string}", (password, context) async {
    final actor = context.world.rawAppDriver;
    await EnterLoginTask(password, LoginPage.txtPassword).performAs(actor);
  });
}

StepDefinitionGeneric theUserTapsTheLoginButton() {
  return when<FlutterWidgetTesterWorld>(" the user taps the login button",
      (context) async {
    final actor = context.world.rawAppDriver;
    await actor.pumpAndSettle();
    await actor.tap(LoginPage.btnLogin);
    expect(find.byType(Webvi), findsOneWidget);
    await actor.;
  });
}

StepDefinitionGeneric theUserWillSeeTheFormPage() {
  return then<FlutterWidgetTesterWorld>("the user will see the form page",
      (context) async {
    final actor = context.world.rawAppDriver;
    await actor.pumpAndSettle();
    expect(FormPage.btnSendForm, findsOneWidget);
  });
}
