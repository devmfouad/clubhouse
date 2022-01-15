import 'package:clubhouse/screens/welcome_screen.dart';
import 'package:clubhouse/util/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClubHouse());
}

class ClubHouse extends StatelessWidget {
  const ClubHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.lightColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.lightColor,
          elevation: 0
        )
      ),
      home: WelcomeScreen(),
    );
  }
}
