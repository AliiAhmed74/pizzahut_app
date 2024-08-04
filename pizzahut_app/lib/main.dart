import 'package:flutter/material.dart';
import 'package:pizzahut_app/detailspage.dart';
import 'package:pizzahut_app/homepage.dart';
import 'package:pizzahut_app/lottiee.dart';
import 'package:pizzahut_app/menu.dart';
import 'package:pizzahut_app/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  lottiePage(),
      routes: {
        '/nextPage 0': (context) => OnboardingPage(),
        '/nextPage 1': (context) => HomePage(),
        '/nextPage 2': (context) => MenuPage(),
        '/nextPage 3': (context) => DetailsPage(),
      },
    );
  }
}

