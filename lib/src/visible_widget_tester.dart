import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test/flutter_test.dart';

const String _defaultPlatform = kIsWeb ? 'web' : 'android';

class VisibleWidgetTester implements WidgetTester {
  final WidgetTester widgetTester;

  VisibleWidgetTester({required this.widgetTester});

  @override
  Iterable<Element> get allElements => widgetTester.allElements;

  @override
  Iterable<RenderObject> get allRenderObjects => widgetTester.allRenderObjects;

  @override
  Iterable<State<StatefulWidget>> get allStates => widgetTester.allStates;

  @override
  Iterable<Widget> get allWidgets => widgetTester.allWidgets;

  @override
  bool any(FinderBase<Element> finder) => widgetTester.any(finder);

  @override
  TestWidgetsFlutterBinding get binding => widgetTester.binding;

  @override
  Future<TestGesture> createGesture(
          {int? pointer,
          PointerDeviceKind kind = PointerDeviceKind.touch,
          int buttons = kPrimaryButton}) =>
      widgetTester.createGesture(
        pointer: pointer,
        kind: kind,
        buttons: buttons,
      );

  @override
  Ticker createTicker(TickerCallback onTick) =>
      widgetTester.createTicker(onTick);

  @override
  void dispatchEvent(PointerEvent event, HitTestResult result) =>
      widgetTester.dispatchEvent(event, result);

  @override
  Future<void> drag(FinderBase<Element> finder, Offset offset,
          {int? pointer,
          int buttons = kPrimaryButton,
          double touchSlopX = kDragSlopDefault,
          double touchSlopY = kDragSlopDefault,
          bool warnIfMissed = true,
          PointerDeviceKind kind = PointerDeviceKind.touch}) =>
      widgetTester.drag(
        finder,
        offset,
        buttons: buttons,
        touchSlopX: touchSlopX,
        touchSlopY: touchSlopY,
        warnIfMissed: warnIfMissed,
        kind: kind,
      );

  @override
  Future<void> dragFrom(Offset startLocation, Offset offset,
          {int? pointer,
          int buttons = kPrimaryButton,
          double touchSlopX = kDragSlopDefault,
          double touchSlopY = kDragSlopDefault,
          PointerDeviceKind kind = PointerDeviceKind.touch}) =>
      widgetTester.dragFrom(
        startLocation,
        offset,
        pointer: pointer,
        buttons: buttons,
        touchSlopX: touchSlopX,
        touchSlopY: touchSlopY,
        kind: kind,
      );

  @override
  Future<void> dragUntilVisible(
          FinderBase<Element> finder, FinderBase<Element> view, Offset moveStep,
          {int maxIteration = 50,
          Duration duration = const Duration(milliseconds: 50)}) =>
      widgetTester.dragUntilVisible(
        finder,
        view,
        moveStep,
        maxIteration: maxIteration,
        duration: duration,
      );

  @override
  T element<T extends Element>(FinderBase<Element> finder) =>
      widgetTester.element(finder);

  @override
  Iterable<T> elementList<T extends Element>(FinderBase<Element> finder) =>
      widgetTester.elementList(finder);

  @override
  SemanticsHandle ensureSemantics() => widgetTester.ensureSemantics();

  @override
  Future<void> ensureVisible(FinderBase<Element> finder) =>
      widgetTester.ensureVisible(finder);

  @override
  Future<void> enterText(FinderBase<Element> finder, String text) =>
      widgetTester.enterText(finder, text);

  @override
  T firstElement<T extends Element>(FinderBase<Element> finder) =>
      widgetTester.firstElement(finder);

  @override
  T firstRenderObject<T extends RenderObject>(FinderBase<Element> finder) =>
      widgetTester.firstRenderObject(finder);

  @override
  T firstState<T extends State<StatefulWidget>>(FinderBase<Element> finder) =>
      widgetTester.firstState(finder);

  @override
  T firstWidget<T extends Widget>(FinderBase<Element> finder) =>
      firstWidget(finder);

  @override
  Future<void> fling(FinderBase<Element> finder, Offset offset, double speed,
          {int? pointer,
          int buttons = kPrimaryButton,
          Duration frameInterval = const Duration(milliseconds: 16),
          Offset initialOffset = Offset.zero,
          Duration initialOffsetDelay = const Duration(seconds: 1),
          bool warnIfMissed = true,
          PointerDeviceKind deviceKind = PointerDeviceKind.touch}) =>
      widgetTester.fling(
        finder,
        offset,
        speed,
        pointer: pointer,
        buttons: buttons,
        frameInterval: frameInterval,
        initialOffset: initialOffset,
        initialOffsetDelay: initialOffsetDelay,
        warnIfMissed: warnIfMissed,
        deviceKind: deviceKind,
      );

  @override
  Future<void> flingFrom(Offset startLocation, Offset offset, double speed,
          {int? pointer,
          int buttons = kPrimaryButton,
          Duration frameInterval = const Duration(milliseconds: 16),
          Offset initialOffset = Offset.zero,
          Duration initialOffsetDelay = const Duration(seconds: 1),
          PointerDeviceKind deviceKind = PointerDeviceKind.touch}) =>
      widgetTester.flingFrom(
        startLocation,
        offset,
        speed,
        pointer: pointer,
        buttons: buttons,
        frameInterval: frameInterval,
        initialOffset: initialOffset,
        deviceKind: deviceKind,
      );

  @override
  Offset getBottomLeft(FinderBase<Element> finder,
          {bool warnIfMissed = false, String callee = 'getBottomLeft'}) =>
      widgetTester.getBottomLeft(
        finder,
        warnIfMissed: warnIfMissed,
        callee: callee,
      );

  @override
  Offset getBottomRight(FinderBase<Element> finder,
          {bool warnIfMissed = false, String callee = 'getBottomRight'}) =>
      widgetTester.getBottomRight(
        finder,
        warnIfMissed: warnIfMissed,
        callee: callee,
      );

  @override
  Offset getCenter(FinderBase<Element> finder,
          {bool warnIfMissed = false, String callee = 'getCenter'}) =>
      widgetTester.getCenter(
        finder,
        warnIfMissed: warnIfMissed,
        callee: callee,
      );

  @override
  Rect getRect(FinderBase<Element> finder) => widgetTester.getRect(finder);

  @override
  Future<TestRestorationData> getRestorationData() =>
      widgetTester.getRestorationData();

  @override
  SemanticsNode getSemantics(FinderBase<Element> finder) =>
      widgetTester.getSemantics(finder);

  @override
  Size getSize(FinderBase<Element> finder) => widgetTester.getSize(finder);

  @override
  Offset getTopLeft(FinderBase<Element> finder,
          {bool warnIfMissed = false, String callee = 'getTopLeft'}) =>
      widgetTester.getTopLeft(
        finder,
        warnIfMissed: warnIfMissed,
        callee: callee,
      );

  @override
  Offset getTopRight(FinderBase<Element> finder,
          {bool warnIfMissed = false, String callee = 'getTopRight'}) =>
      widgetTester.getTopRight(
        finder,
        warnIfMissed: warnIfMissed,
        callee: callee,
      );

  @override
  Future<List<Duration>> handlePointerEventRecord(
          Iterable<PointerEventRecord> records) =>
      widgetTester.handlePointerEventRecord(records);

  @override
  bool get hasRunningAnimations => widgetTester.hasRunningAnimations;

  @override
  HitTestResult hitTestOnBinding(Offset location, {int? viewId}) =>
      widgetTester.hitTestOnBinding(location, viewId: viewId);

  @override
  Future<void> idle() => widgetTester.idle();

  @override
  Iterable<Layer> layerListOf(FinderBase<Element> finder) =>
      widgetTester.layerListOf(finder);

  @override
  List<Layer> get layers => widgetTester.layers;

  @override
  Future<void> longPress(FinderBase<Element> finder,
          {int? pointer,
          int buttons = kPrimaryButton,
          bool warnIfMissed = true,
          PointerDeviceKind kind = PointerDeviceKind.touch}) =>
      widgetTester.longPress(
        finder,
        pointer: pointer,
        buttons: buttons,
        warnIfMissed: warnIfMissed,
        kind: kind,
      );

  @override
  Future<void> longPressAt(Offset location,
          {int? pointer,
          int buttons = kPrimaryButton,
          PointerDeviceKind kind = PointerDeviceKind.touch}) =>
      widgetTester.longPressAt(
        location,
        pointer: pointer,
        buttons: buttons,
        kind: kind,
      );

  @override
  int get nextPointer => widgetTester.nextPointer;

  @override
  Future<void> pageBack() => widgetTester.pageBack();

  @override
  TestPlatformDispatcher get platformDispatcher =>
      widgetTester.platformDispatcher;

  @override
  Future<TestGesture> press(FinderBase<Element> finder,
          {int? pointer,
          int buttons = kPrimaryButton,
          bool warnIfMissed = true,
          PointerDeviceKind kind = PointerDeviceKind.touch}) =>
      widgetTester.press(
        finder,
        pointer: pointer,
        buttons: buttons,
        warnIfMissed: warnIfMissed,
        kind: kind,
      );

  @override
  void printToConsole(String message) => widgetTester.printToConsole(message);

  @override
  Future<void> pump(
      [Duration? duration,
      EnginePhase phase = EnginePhase.sendSemanticsUpdate]) {
    // TODO: Bruno back here!

    return widgetTester.pump(
      duration,
      phase,
    );
  }

  @override
  Future<int> pumpAndSettle(
      [Duration duration = const Duration(milliseconds: 100),
      EnginePhase phase = EnginePhase.sendSemanticsUpdate,
      Duration timeout = const Duration(minutes: 10)]) {
    // TODO: Bruno back here!

    return widgetTester.pumpAndSettle(
      duration,
      phase,
      timeout,
    );
  }

  @override
  Future<void> pumpBenchmark(Duration duration) {
    // TODO: Bruno back here!

    return widgetTester.pumpBenchmark(
      duration,
    );
  }

  @override
  Future<void> pumpFrames(Widget target, Duration maxDuration,
      [Duration interval =
          const Duration(milliseconds: 16, microseconds: 683)]) {
    // TODO: Bruno back here!

    return widgetTester.pumpFrames(
      target,
      maxDuration,
      interval,
    );
  }

  @override
  Future<void> pumpWidget(Widget widget,
      [Duration? duration,
      EnginePhase phase = EnginePhase.sendSemanticsUpdate]) {
    // TODO: Bruno back here!

    return widgetTester.pumpWidget(
      widget,
      duration,
      phase,
    );
  }

  @override
  T renderObject<T extends RenderObject>(FinderBase<Element> finder) =>
      widgetTester.renderObject(finder);

  @override
  Iterable<T> renderObjectList<T extends RenderObject>(
          FinderBase<Element> finder) =>
      widgetTester.renderObjectList(finder);

  @override
  Future<void> restartAndRestore() => widgetTester.restartAndRestore();

  @override
  Future<void> restoreFrom(TestRestorationData data) =>
      widgetTester.restoreFrom(data);

  @override
  Future<T?> runAsync<T>(Future<T> Function() callback,
          {Duration additionalTime = const Duration(milliseconds: 1000)}) =>
      widgetTester.runAsync(callback);

  @override
  Future<void> scrollUntilVisible(FinderBase<Element> finder, double delta,
          {FinderBase<Element>? scrollable,
          int maxScrolls = 50,
          Duration duration = const Duration(milliseconds: 50)}) =>
      widgetTester.scrollUntilVisible(
        finder,
        delta,
        scrollable: scrollable,
        maxScrolls: maxScrolls,
        duration: duration,
      );

  @override
  SemanticsController get semantics => widgetTester.semantics;

  @override
  Future<void> sendEventToBinding(PointerEvent event) =>
      widgetTester.sendEventToBinding(event);

  @override
  Future<bool> sendKeyDownEvent(LogicalKeyboardKey key,
          {String platform = _defaultPlatform,
          String? character,
          PhysicalKeyboardKey? physicalKey}) =>
      widgetTester.sendKeyDownEvent(
        key,
        platform: platform,
        character: character,
        physicalKey: physicalKey,
      );

  @override
  Future<bool> sendKeyEvent(LogicalKeyboardKey key,
          {String platform = _defaultPlatform,
          String? character,
          PhysicalKeyboardKey? physicalKey}) =>
      widgetTester.sendKeyEvent(
        key,
        platform: platform,
        character: character,
        physicalKey: physicalKey,
      );

  @override
  Future<bool> sendKeyRepeatEvent(LogicalKeyboardKey key,
          {String platform = _defaultPlatform,
          String? character,
          PhysicalKeyboardKey? physicalKey}) =>
      widgetTester.sendKeyRepeatEvent(
        key,
        platform: platform,
        character: character,
        physicalKey: physicalKey,
      );

  @override
  Future<bool> sendKeyUpEvent(LogicalKeyboardKey key,
          {String platform = _defaultPlatform,
          PhysicalKeyboardKey? physicalKey}) =>
      widgetTester.sendKeyUpEvent(
        key,
        platform: platform,
        physicalKey: physicalKey,
      );

  @override
  Future<void> showKeyboard(FinderBase<Element> finder) =>
      widgetTester.showKeyboard(finder);

  @override
  Future<TestGesture> startGesture(Offset downLocation,
          {int? pointer,
          PointerDeviceKind kind = PointerDeviceKind.touch,
          int buttons = kPrimaryButton}) =>
      widgetTester.startGesture(
        downLocation,
        pointer: pointer,
        kind: kind,
        buttons: buttons,
      );

  @override
  T state<T extends State<StatefulWidget>>(FinderBase<Element> finder) =>
      widgetTester.state(finder);

  @override
  Iterable<T> stateList<T extends State<StatefulWidget>>(
          FinderBase<Element> finder) =>
      widgetTester.stateList(finder);

  @override
  List<CapturedAccessibilityAnnouncement> takeAnnouncements() =>
      widgetTester.takeAnnouncements();

  @override
  takeException() => widgetTester.takeException();

  @override
  Future<void> tap(FinderBase<Element> finder,
          {int? pointer,
          int buttons = kPrimaryButton,
          bool warnIfMissed = true,
          PointerDeviceKind kind = PointerDeviceKind.touch}) =>
      widgetTester.tap(
        finder,
        pointer: pointer,
        buttons: buttons,
        warnIfMissed: warnIfMissed,
        kind: kind,
      );

  @override
  Future<void> tapAt(Offset location,
          {int? pointer,
          int buttons = kPrimaryButton,
          PointerDeviceKind kind = PointerDeviceKind.touch}) =>
      widgetTester.tapAt(
        location,
        pointer: pointer,
        buttons: buttons,
        kind: kind,
      );

  @override
  Future<void> tapOnText(FinderBase<TextRangeContext> textRangeFinder,
          {int? pointer, int buttons = kPrimaryButton}) =>
      widgetTester.tapOnText(
        textRangeFinder,
        pointer: pointer,
        buttons: buttons,
      );

  @override
  String get testDescription => widgetTester.testDescription;

  @override
  TestTextInput get testTextInput => widgetTester.testTextInput;

  @override
  Future<void> timedDrag(
          FinderBase<Element> finder, Offset offset, Duration duration,
          {int? pointer,
          int buttons = kPrimaryButton,
          double frequency = 60.0,
          bool warnIfMissed = true}) =>
      widgetTester.timedDrag(
        finder,
        offset,
        duration,
        pointer: pointer,
        buttons: buttons,
        frequency: frequency,
        warnIfMissed: warnIfMissed,
      );

  @override
  Future<void> timedDragFrom(
          Offset startLocation, Offset offset, Duration duration,
          {int? pointer,
          int buttons = kPrimaryButton,
          double frequency = 60.0}) =>
      widgetTester.timedDragFrom(
        startLocation,
        offset,
        duration,
        pointer: pointer,
        buttons: buttons,
        frequency: frequency,
      );

  @override
  Future<void> trackpadFling(
          FinderBase<Element> finder, Offset offset, double speed,
          {int? pointer,
          int buttons = kPrimaryButton,
          Duration frameInterval = const Duration(milliseconds: 16),
          Offset initialOffset = Offset.zero,
          Duration initialOffsetDelay = const Duration(seconds: 1),
          bool warnIfMissed = true}) =>
      widgetTester.trackpadFling(
        finder,
        offset,
        speed,
        pointer: pointer,
        buttons: buttons,
        frameInterval: frameInterval,
        initialOffset: initialOffset,
        initialOffsetDelay: initialOffsetDelay,
        warnIfMissed: warnIfMissed,
      );

  @override
  Future<void> trackpadFlingFrom(
          Offset startLocation, Offset offset, double speed,
          {int? pointer,
          int buttons = kPrimaryButton,
          Duration frameInterval = const Duration(milliseconds: 16),
          Offset initialOffset = Offset.zero,
          Duration initialOffsetDelay = const Duration(seconds: 1)}) =>
      widgetTester.trackpadFlingFrom(
        startLocation,
        offset,
        speed,
        pointer: pointer,
        buttons: buttons,
        frameInterval: frameInterval,
        initialOffset: initialOffset,
        initialOffsetDelay: initialOffsetDelay,
      );

  @override
  void verifyTickersWereDisposed(
          [String when = 'when none should have been']) =>
      widgetTester.verifyTickersWereDisposed(when);

  @override
  TestFlutterView get view => widgetTester.view;

  @override
  TestFlutterView viewOf(FinderBase<Element> finder) =>
      widgetTester.viewOf(finder);
  @override
  T widget<T extends Widget>(FinderBase<Element> finder) =>
      widgetTester.widget(finder);

  @override
  Iterable<T> widgetList<T extends Widget>(FinderBase<Element> finder) =>
      widgetTester.widgetList(finder);
}
