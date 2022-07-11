import 'package:flutter/material.dart';

final appTheme = ThemeData.dark().copyWith(
  colorScheme: _colorScheme,
  textTheme: _textTheme,
);

final _colorScheme = ColorScheme.fromSeed(
  seedColor: Colors.black,
  brightness: Brightness.dark,
);

final _textTheme = ThemeData.dark().textTheme.copyWith(
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
      displaySmall: const TextStyle(
        fontSize: 12,
        color: Colors.yellow,
      ),
      headlineLarge: const TextStyle(
        fontSize: 20,
        color: Colors.yellow,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: const TextStyle(
        fontSize: 18,
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
    );
