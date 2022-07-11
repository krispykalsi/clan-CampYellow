import 'package:flutter/material.dart';

import 'theme.dart';
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
      theme: appTheme,
      home: const Scaffold(
        body: SafeArea(child: HomePage()),
        backgroundColor: Colors.black,
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
