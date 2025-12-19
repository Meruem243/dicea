import 'package:flutter/material.dart';
import 'pages/home_page.dart';

/// Root application widget.
///
/// Keeps configuration (theme, title) here and defers the home screen
/// to `HomePage` located in `pages/home_page.dart`.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
