import 'package:flutter/material.dart';
import 'package:whatsap_clone/custom/global_theme.dart';
import 'package:whatsap_clone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      // darkTheme: ,
      // themeMode: ThemeMode.dark,
      home: const HomeScreen(),
    );
  }
}
