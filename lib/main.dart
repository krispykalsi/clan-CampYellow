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
      ),
      home: const Scaffold(
        body: SafeArea(child: HomePage()),
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
