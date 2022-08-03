// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_vip_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeVip on _HomeVip, Store {
  late final _$vipListAtom = Atom(name: '_HomeVip.vipList', context: context);

  @override
  ObservableList<dynamic>? get vipList {
    _$vipListAtom.reportRead();
    return super.vipList;
  }

  @override
  set vipList(ObservableList<dynamic>? value) {
    _$vipListAtom.reportWrite(value, super.vipList, () {
      super.vipList = value;
    });
  }

  late final _$refreshAsyncAction =
      AsyncAction('_HomeVip.refresh', context: context);

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  @override
  String toString() {
    return '''
vipList: ${vipList}
    ''';
  }
}
