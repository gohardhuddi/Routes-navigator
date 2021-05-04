import 'package:flutter/material.dart';
import 'package:testapp/main.dart';
import 'package:testapp/SecondPage.dart';
class RoutGenerator
{
  static Route<dynamic> generateRout(RouteSettings settings){
    final args= settings.arguments;
    switch (settings.name)
    {
      case '/':
        return MaterialPageRoute(builder: (_)=>MyHomePage());
      case'/second':
        if(args is String)
          {
            return MaterialPageRoute(builder: (_)=>SecondPage(
              data:args,
            ));
          }
        return _errorRoute();
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
