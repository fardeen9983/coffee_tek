import 'package:coffee_tek/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoffeeTek',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      onGenerateRoute: generateRoutes,
    );
  }

  Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
