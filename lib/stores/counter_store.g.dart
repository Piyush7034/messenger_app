// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStore, Store {
  final _$counterAtom = Atom(name: '_CounterStore.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$_CounterStoreActionController =
      ActionController(name: '_CounterStore');

  @override
  void incrementAction() {
    final _$actionInfo = _$_CounterStoreActionController.startAction();
    try {
      return super.incrementAction();
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementActionComplete(int i) {
    final _$actionInfo = _$_CounterStoreActionController.startAction();
    try {
      return super.incrementActionComplete(i);
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }
}
