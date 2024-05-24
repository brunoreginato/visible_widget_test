import 'dart:io';
import 'dart:ui';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

mixin WidgetTesterMixing on WidgetTester {
  int _pumpCount = 0;

  @override
  Future<void> pumpWidget(Widget widget,
      {Duration? duration,
      EnginePhase phase = EnginePhase.sendSemanticsUpdate,
      bool wrapWithView = true}) async {
    _pumpCount++;
    await super.pumpWidget(
      widget,
      duration: duration,
      phase: phase,
    );

    await saveCurrentWidgetAsImage();
  }

  @override
  Future<void> pump(
      [Duration? duration,
      EnginePhase phase = EnginePhase.sendSemanticsUpdate]) async {
    _pumpCount++;
    await super.pump(
      duration,
      phase,
    );
    await saveCurrentWidgetAsImage();
  }

  @override
  Future<int> pumpAndSettle(
      [Duration duration = const Duration(milliseconds: 100),
      EnginePhase phase = EnginePhase.sendSemanticsUpdate,
      Duration timeout = const Duration(minutes: 10)]) async {
    _pumpCount++;
    final result = super.pumpAndSettle(
      duration,
      phase,
      timeout,
    );
    await saveCurrentWidgetAsImage();
    return result;
  }

  @override
  Future<void> pumpBenchmark(Duration duration) async {
    _pumpCount++;
    await super.pumpBenchmark(
      duration,
    );
    await saveCurrentWidgetAsImage();
  }

  @override
  Future<void> pumpFrames(Widget target, Duration maxDuration,
      [Duration interval =
          const Duration(milliseconds: 16, microseconds: 683)]) async {
    _pumpCount++;
    await super.pumpFrames(
      target,
      maxDuration,
      interval,
    );
    await saveCurrentWidgetAsImage();
  }

  Future<void> saveCurrentWidgetAsImage() async {
    TestAsyncUtils.guardSync();

    await binding.runAsync(() async {
      final firstElement = binding.rootElement!;
      final image = await captureImage(firstElement);
      final bytes = await image.toByteData(format: ImageByteFormat.png);
      final byteList = bytes?.buffer.asUint8List();
      if (byteList != null) {
        final file = await File(path.join(
          'visual_debug',
          'pump_$_pumpCount.png',
        )).create(recursive: true);
        file.writeAsBytesSync(byteList);
      }
    });
  }
}
