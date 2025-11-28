
import 'package:flutter/material.dart';
import 'package:flutter_project_01/pages/home_page.dart';
import 'package:flutter_project_01/pages/login_page.dart';
import 'package:flutter_project_01/utils/routes_name.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.loginPage:
        return MaterialPageRoute(builder: (_) => LoginPage());

    case RoutesName.homePage:
      return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_)=> const Scaffold(
            body: Text('No Route Found'),
        ));
  }
  }
}