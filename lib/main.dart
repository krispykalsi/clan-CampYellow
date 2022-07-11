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
        bottomNavigationBar: CustomNavigationBar(
          profileImage: NetworkImage(
              "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
        ),
      ),
    );
  }
}
