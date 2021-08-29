// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DatabaseStore on _DatabaseStoreBase, Store {
  final _$personsAtom = Atom(name: '_DatabaseStoreBase.persons');

  @override
  List<Person> get persons {
    _$personsAtom.reportRead();
    return super.persons;
  }

  @override
  set persons(List<Person> value) {
    _$personsAtom.reportWrite(value, super.persons, () {
      super.persons = value;
    });
  }

  final _$billsAtom = Atom(name: '_DatabaseStoreBase.bills');

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
persons: ${persons},
bills: ${bills}
    ''';
  }
}
