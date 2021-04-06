
import 'package:flutter/material.dart';
import 'package:splitTheBill/screens/Home/home.dart';


class SplitTheBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "STB",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.green,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.purple)),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
      },
    );
  }
}