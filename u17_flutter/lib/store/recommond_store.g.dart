// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommond_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Recommond on _Recommond, Store {
  late final _$recommondListAtom =
      Atom(name: '_Recommond.recommondList', context: context);

  @override
  ObservableList<dynamic>? get recommondList {
    _$recommondListAtom.reportRead();
    return super.recommondList;
  }

  @override
  set recommondList(ObservableList<dynamic>? value) {
    _$recommondListAtom.reportWrite(value, super.recommondList, () {
      super.recommondList = value;
    });
  }

  late final _$loadAsyncAction =
      AsyncAction('_Recommond.load', context: context);

  @override
  Future<void> load(int sexType) {
    return _$loadAsyncAction.run(() => super.load(sexType));
  }

  @override
  String toString() {
    return '''
recommondList: ${recommondList}
    ''';
  }
}
