import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:librarynfc/pages/home_page.dart';
import 'package:librarynfc/pages/leaderboard_page.dart';
import 'package:librarynfc/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library NFC',
      theme: ThemeData(
        primaryColor: Color(0xFF404040), // Dark grey
        scaffoldBackgroundColor: Color(0xFF656565), // Slightly lighter dark grey
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.grey[300]),
          bodyText2: TextStyle(color: Colors.grey[300]),
        ),
        iconTheme: IconThemeData(color: Colors.grey[300]),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      home: const HomePage(),
      routes: {
        '/#/leaderboard': (context) => const LeaderboardPage(),
        '/#/settings': (context) => const SettingsPage(),
      },
    );
  }
}