// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$batteryLevelAtom = Atom(name: '_HomeControllerBase.batteryLevel');

  @override
  int? get batteryLevel {
    _$batteryLevelAtom.reportRead();
    return super.batteryLevel;
  }

  @override
  set batteryLevel(int? value) {
    _$batteryLevelAtom.reportWrite(value, super.batteryLevel, () {
      super.batteryLevel = value;
    });
  }

  final _$getBatteryLevelAsyncAction =
      AsyncAction('_HomeControllerBase.getBatteryLevel');

  @override
  Future<int> getBatteryLevel() {
    return _$getBatteryLevelAsyncAction.run(() => super.getBatteryLevel());
  }

  @override
  String toString() {
    return '''
batteryLevel: ${batteryLevel}
    ''';
  }
}
