import 'package:flutter/material.dart';

import 'home_page.dart';
import 'custom_navigation_bar.dart';

void main() {
  runApp(const ClanApp());
}

class ClanApp extends StatelessWidget {
  const ClanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
        textTheme: ThemeData.dark().textTheme.copyWith(
              displayLarge: const TextStyle(
                fontSize: 36,
                color: Colors.yellow,
                fontWeight: FontWeight.w900,
              ),
              displayMedium: const TextStyle(
                fontSize: 30,
                color: Colors.yellow,
                fontWeight: FontWeight.w900,
              ),
              headlineLarge: const TextStyle(
                fontSize: 24,
                color: Colors.yellow,
                fontWeight: FontWeight.w600,
              ),
              headlineMedium: const TextStyle(
                fontSize: 20,
                color: Colors.pink,
                fontWeight: FontWeight.w500,
              ),
              headlineSmall: const TextStyle(
                fontSize: 16,
                color: Colors.pink,
              ),
              titleLarge: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              titleMedium: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
      ),
      home: const Scaffold(
        body: SafeArea(child: HomePage()),
        backgroundColor: Colors.black,
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
