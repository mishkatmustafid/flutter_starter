import 'package:flutter/material.dart';
import 'package:flutter_starter/views/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguements passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        if ((args ?? 'Home') is String) {
          return MaterialPageRoute(builder: (_) => MyHomePage(title: 'Home'));
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
      // If there is no such named route in the switch statement,
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('ERROR!!')),
        ));
  }
}
