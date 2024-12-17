import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/register_page.dart';
import 'screens/main_page.dart';
import 'screens/register_location_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/register': (context) => RegisterPage(),
        '/main': (context) => MainPage(),
        '/registerLocation': (context) => RegisterLocationPage(),
      },
    );
  }
}
