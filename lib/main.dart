import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const ClanApp());
}

class ClanApp extends StatelessWidget {
  const ClanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const HomePage(),
    );
  }
}
