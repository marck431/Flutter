// ignore_for_file: avoid_print

import 'package:flutter_gherkin/flutter_gherkin.dart'; // notice new import name
import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:gherkin/gherkin.dart';

import 'hooks/reset_app_hook.dart';
import 'step_definitions/step_definitions.dart';

FlutterTestConfiguration gherkinTestConfiguration = FlutterTestConfiguration(
  stepDefinitions: listStepDefinitions,
  order: ExecutionOrder.alphabetical,
  hooks: [ResetAppHook()],
  tagExpression: '',
  reporters: [
    StdoutReporter(MessageLevel.error)
      ..setWriteLineFn(print)
      ..setWriteFn(print),
    ProgressReporter()
      ..setWriteLineFn(print)
      ..setWriteFn(print),
    TestRunSummaryReporter(),
    JsonReporter(
      writeReport: (_, __) => Future<void>.value(),
    ),
  ],
);
