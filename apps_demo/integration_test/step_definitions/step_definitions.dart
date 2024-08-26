// ignore: depend_on_referenced_packages
import 'package:gherkin/gherkin.dart';

import 'login/logIngStepdefinition.dart';

Iterable<StepDefinitionGeneric> listStepDefinitions = [
  theUserEnterTheUsername(),
  theUserEnterThePassword(),
  theUserTapsTheLoginButton(),
  theUserWillSeeTheFormPage()
];
