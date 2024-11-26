import 'package:flutter/material.dart';
import 'login_page.dart';
import 'dashboard_page.dart';
import 'detail_page.dart';
import 'profil_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/detail': (context) => const DetailPage(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
