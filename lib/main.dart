import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctor/features/auth/pages/log_in_page.dart';
import 'package:flutter_application_1/themes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      theme: lightThem,
      debugShowCheckedModeBanner: false,
      home: const LogInPage(),
    );
  }
}
