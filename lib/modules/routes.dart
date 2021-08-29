import 'package:flutter/material.dart';
import 'package:split_the_bill/modules/home/home_page.dart';
import 'package:split_the_bill/modules/split/split_page.dart';

class RouteGeneratior {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case '/':
        page = HomePage();
        break;
      case '/split':
        page = SplitPage();
        break;
      default:
        page = _errorPage();
        break;
    }

    return MaterialPageRoute(builder: (context) => page);
  }

  static Scaffold _errorPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text('ERROR'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Page no Found'),
      ),
    );
  }
}
