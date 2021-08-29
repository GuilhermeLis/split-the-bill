import 'package:flutter/material.dart';
import 'package:split_the_bill/shared/database/store/database_store.dart';

class DatabaseProvider extends InheritedWidget {
  final DatabaseStore databaseStore;

  const DatabaseProvider(
    this.databaseStore, {
    required Widget child,
  }) : super(child: child);

  static DatabaseProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DatabaseProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
