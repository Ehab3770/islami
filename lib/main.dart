import 'package:flutter/material.dart';
import 'package:islami/Core/resources/ColorsManager.dart';
import 'package:islami/Core/resources/RoutesManager.dart';

import 'Ui/home/screen/HomeScreen.dart';
import 'Ui/onBoarding/screen/OnBoarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.all(TextStyle(
            color: ColorsManager.whiteColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          )),
        )
      ),
      routes: {
       RoutesManager.homeRoute: (context) => Homescreen(),
        RoutesManager.OnboardingRoute: (context) => Onboarding(),
      },
      initialRoute: RoutesManager.OnboardingRoute,
    );
  }
}

