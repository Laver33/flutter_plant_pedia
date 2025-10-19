import 'package:flutter/material.dart';
import 'package:my_first_app/Style/String.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [

          Row(
            children: [
              Text(RuStrings.Static)
            ],
          ),

          Row(
            children: [
              Text(',')
            ],
          )

        ],
      ))
    );
  }
}