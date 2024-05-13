import 'package:flutter_test/flutter_test.dart';
import 'package:test_api/scaffolding.dart' as test_package;
import 'package:meta/meta.dart';
import 'package:leak_tracker_flutter_testing/leak_tracker_flutter_testing.dart';
import 'package:visible_widget_test/src/visible_widget_tester.dart';

typedef VisibleWidgetTesterCallback = Future<void> Function(
    VisibleWidgetTester widgetTester);

@isTest
void visibleWidgetTest(
  String description,
  VisibleWidgetTesterCallback callback, {
  bool? skip,
  test_package.Timeout? timeout,
  bool semanticsEnabled = true,
  TestVariant<Object?> variant = const DefaultTestVariant(),
  dynamic tags,
  int? retry,
  LeakTesting? experimentalLeakTesting,
}) {
  testWidgets(
    description,
    (WidgetTester widgetTester) => callback(
      VisibleWidgetTester(widgetTester: widgetTester),
    ),
    skip: skip,
    timeout: timeout,
    semanticsEnabled: semanticsEnabled,
    variant: variant,
    tags: tags,
    retry: retry,
    experimentalLeakTesting: experimentalLeakTesting,
  );
}
