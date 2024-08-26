// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runner.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner({
    required FlutterTestConfiguration configuration,
    required StartAppFn appMainFunction,
    required Timeout scenarioExecutionTimeout,
    AppLifecyclePumpHandlerFn? appLifecyclePumpHandler,
    LiveTestWidgetsFlutterBindingFramePolicy? framePolicy,
  }) : super(
          configuration: configuration,
          appMainFunction: appMainFunction,
          scenarioExecutionTimeout: scenarioExecutionTimeout,
          appLifecyclePumpHandler: appLifecyclePumpHandler,
          framePolicy: framePolicy,
        );

  @override
  void onRun() {
    testFeature0();
  }

  void testFeature0() {
    runFeature(
      name: 'Test LoginPage:',
      tags: <String>[],
      run: () {
        runScenario(
          name: 'Log in success',
          description: null,
          path:
              'C:\\Users\\marcos.silva_pragma\\Documents\\PROYECTOS\\FLUTTER\\AUTOMATIZACION\\FLUTTER\\apps_demo\\.\\integration_test\\features\\log_in.feature',
          tags: <String>['@SuccessLogin'],
          steps: [
            (
              TestDependencies dependencies,
              bool skip,
            ) async {
              return await runStep(
                name: 'Given the user enter the username \'admin\'',
                multiLineStrings: <String>[],
                table: null,
                dependencies: dependencies,
                skip: skip,
              );
            },
            (
              TestDependencies dependencies,
              bool skip,
            ) async {
              return await runStep(
                name: 'And the user enter the password \'admin\'',
                multiLineStrings: <String>[],
                table: null,
                dependencies: dependencies,
                skip: skip,
              );
            },
            (
              TestDependencies dependencies,
              bool skip,
            ) async {
              return await runStep(
                name: 'When the user taps the login button',
                multiLineStrings: <String>[],
                table: null,
                dependencies: dependencies,
                skip: skip,
              );
            },
            (
              TestDependencies dependencies,
              bool skip,
            ) async {
              return await runStep(
                name: 'Then the user will see the form page',
                multiLineStrings: <String>[],
                table: null,
                dependencies: dependencies,
                skip: skip,
              );
            },
          ],
          onBefore: () async => onBeforeRunFeature(
            name: 'Test LoginPage',
            path:
                'C:\\Users\\marcos.silva_pragma\\Documents\\PROYECTOS\\FLUTTER\\AUTOMATIZACION\\FLUTTER\\apps_demo\\.\\integration_test\\features\\log_in.feature',
            description: null,
            tags: <String>[],
          ),
          onAfter: () async => onAfterRunFeature(
            name: 'Test LoginPage',
            path:
                'C:\\Users\\marcos.silva_pragma\\Documents\\PROYECTOS\\FLUTTER\\AUTOMATIZACION\\FLUTTER\\apps_demo\\.\\integration_test\\features\\log_in.feature',
            description: null,
            tags: <String>[],
          ),
        );
      },
    );
  }
}

void executeTestSuite({
  required FlutterTestConfiguration configuration,
  required StartAppFn appMainFunction,
  Timeout scenarioExecutionTimeout = const Timeout(const Duration(minutes: 10)),
  AppLifecyclePumpHandlerFn? appLifecyclePumpHandler,
  LiveTestWidgetsFlutterBindingFramePolicy? framePolicy,
}) {
  _CustomGherkinIntegrationTestRunner(
    configuration: configuration,
    appMainFunction: appMainFunction,
    appLifecyclePumpHandler: appLifecyclePumpHandler,
    scenarioExecutionTimeout: scenarioExecutionTimeout,
    framePolicy: framePolicy,
  ).run();
}
