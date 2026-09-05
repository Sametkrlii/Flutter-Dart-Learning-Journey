import 'package:flutter/material.dart';

import 'constants/app_colors.dart';
import 'screens/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme =
        ColorScheme.fromSeed(
          seedColor: AppColors.accentCyan,
          brightness: Brightness.dark,
        ).copyWith(
          primary: AppColors.accentCyan,
          secondary: AppColors.accentOrange,
          surface: AppColors.cardColor,
          onSurface: AppColors.textPrimary,
        );

    return MaterialApp(
      title: 'Smart Control',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: AppColors.bgNightColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.appBarColor,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          color: AppColors.cardColor,
          surfaceTintColor: Colors.transparent,
          elevation: 2,
        ),
        iconTheme: const IconThemeData(color: AppColors.textPrimary),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: AppColors.textPrimary),
        ),
      ),
      home: const HomeView(),
    );
  }
}
