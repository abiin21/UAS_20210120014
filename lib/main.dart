import 'package:flutter/material.dart';
import 'login_page.dart';
import 'dashboard.dart';
import 'menu1.dart'; //menu makanan
import 'menu2.dart'; //menu minuman
import 'menu3.dart'; //menu pesan antar
import 'menu4.dart'; //menu profil
import 'detail.dart'; //menu detail

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/loginpage',
      routes: {
        '/loginpage': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/menu1': (context) => Menu1Page(),
        '/menu2': (context) => Menu2Page(),
        '/menu3': (context) => Menu3Page(),
        '/menu4': (context) => Menu4Page(),
      },
    );
  }
}
