import 'package:flutter/material.dart';
import 'package:personal_finance/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
    
    return MaterialApp(
      theme: AppTheme.greenFinanceTheme,
      darkTheme: AppTheme.greenFinanceDarkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
