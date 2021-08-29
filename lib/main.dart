import 'package:flutter/material.dart';
import 'package:split_the_bill/modules/routes.dart';
import 'package:split_the_bill/shared/database/store/database_store.dart';
import 'package:split_the_bill/shared/services/database_provider.dart';
import 'package:split_the_bill/shared/utils/global.dart';
import 'package:split_the_bill/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late DatabaseStore databaseStore;
  @override
  void initState() {
    databaseStore = DatabaseStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DatabaseProvider(
      databaseStore,
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: Global.navigatorState,
        theme: theme,
        initialRoute: '/',
        onGenerateRoute: RouteGeneratior.generateRoute,
      ),
    );
  }
}
