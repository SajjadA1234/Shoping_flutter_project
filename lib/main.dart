import 'package:flutter/material.dart';
import 'package:flutter_application_2/Invitation%20to%20cooperate.dart';
import 'package:flutter_application_2/categories_page.dart';
import 'package:flutter_application_2/contact_us_page.dart';
import 'package:flutter_application_2/home_page.dart';
import 'settings_page.dart'; // Ensure your SettingsPage is imported

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => CardGridPage(),
        '/settings': (context) =>
            SettingsPage(), // Define the SettingsPage route
        // Add other routes here if necessary
      },
    );
  }
}
