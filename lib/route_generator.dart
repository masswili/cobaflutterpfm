import 'package:cobaflutterpfm/transition/fade_route.dart';
import 'package:cobaflutterpfm/transition/size_route.dart';
import 'package:cobaflutterpfm/transition/slide_route.dart';
import 'package:cobaflutterpfm/view/Launcher_view.dart';
import 'package:cobaflutterpfm/view/dashboard_view.dart';
import 'package:cobaflutterpfm/view/login_view.dart';
import 'package:cobaflutterpfm/view/register_view.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LauncherPage());
      case '/login':
        return SizeRoute(page: const LoginPage());
      case '/register':
        return SlideUpRoute(page: const RegisterPage());
      case '/home':
        return FadeRoute(page: const HomePage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text('Error page')),
      );
    });
  }
}
