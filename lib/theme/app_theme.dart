import 'package:flutter/material.dart';

abstract final class AppTheme {
  static const bg = Color(0xFF080A08);
  static const panel = Color(0xFF12141A);
  static const panelBorder = Color(0xFF2A3040);
  static const text = Color(0xFFE8EDE4);
  static const muted = Color(0xFF7A8A82);
  static const gold = Color(0xFFFFD54F);
  static const neutralGradient = [
    Color(0xFF1C1C1E),
    Color(0xFF2C2C2E),
    Color(0xFF3A3A3C),
    Color(0xFF48484A),
  ];
  static List<BoxShadow> neonGlow(Color c, {double blur = 18}) => [
        BoxShadow(color: c.withOpacity(0.65), blurRadius: blur, spreadRadius: 1),
        BoxShadow(color: c.withOpacity(0.35), blurRadius: blur * 2),
      ];

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4CAF50), brightness: Brightness.light),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: bg,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4CAF50), brightness: Brightness.dark),
  );
}
