library frontend_challenge;

import 'package:flutter/material.dart';

part 'profile.dart';
part 'frontend_challenge_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Frontend Challenge',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "SF Pro Text",
        ),
        home: const ProfilePage(title: "Profile"));
  }
}
