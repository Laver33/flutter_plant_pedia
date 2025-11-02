import 'package:flutter/material.dart';
import 'package:my_first_app/Style/String.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(RuStrings.sectionsTitles[3]),
      ),
      body: SafeArea(
        child: Center(
          child: Text('настройки'),
        ),
      )
    );
  }
}