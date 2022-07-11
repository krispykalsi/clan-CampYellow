import 'package:flutter/material.dart';

import 'ui/theme.dart';
import 'ui/home/home_page.dart';
import 'ui/custom_navigation_bar.dart';

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
