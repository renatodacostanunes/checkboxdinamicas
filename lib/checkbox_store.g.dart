// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CheckboxStore on _CheckboxStoreBase, Store {
  late final _$checkboxListAtom =
      Atom(name: '_CheckboxStoreBase.checkboxList', context: context);

  @override
  List<CheckboxObj> get checkboxList {
    _$checkboxListAtom.reportRead();
    return super.checkboxList;
  }

  @override
  set checkboxList(List<CheckboxObj> value) {
    _$checkboxListAtom.reportWrite(value, super.checkboxList, () {
      super.checkboxList = value;
    });
  }

  late final _$_CheckboxStoreBaseActionController =
      ActionController(name: '_CheckboxStoreBase', context: context);

  @override
  dynamic favoriteCategory(CheckboxObj obj, bool? check) {
    final _$actionInfo = _$_CheckboxStoreBaseActionController.startAction(
        name: '_CheckboxStoreBase.favoriteCategory');
    try {
      return super.favoriteCategory(obj, check);
    } finally {
      _$_CheckboxStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
checkboxList: ${checkboxList}
    ''';
  }
}
