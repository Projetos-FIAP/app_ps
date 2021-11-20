import 'package:app_ps/src/pages/login_screen.dart';
import 'package:app_ps/src/pages/relatorio_screen.dart';
import 'package:app_ps/src/pages/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/login": (context) => LoginScreen(),
        "/relatorios": (context) => RelatorioScreen()
      },
      title: "ONG - Terra, planeta Água",
    );
  }
}
