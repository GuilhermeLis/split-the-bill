// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplitStore on _SplitStoreBase, Store {
  final _$billsAtom = Atom(name: '_SplitStoreBase.bills');

  @override
  List<Bill> get bills {
    _$billsAtom.reportRead();
    return super.bills;
  }

  @override
  set bills(List<Bill> value) {
    _$billsAtom.reportWrite(value, super.bills, () {
      super.bills = value;
    });
  }

  @override
  String toString() {
    return '''
bills: ${bills}
    ''';
  }
}
