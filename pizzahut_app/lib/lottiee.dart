import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class lottiePage extends StatefulWidget {
  const lottiePage({super.key});

  @override
  State<lottiePage> createState() => _lottiePageState();
}

class _lottiePageState extends State<lottiePage> {
  @override
   void initState() {
    super.initState();
    // Navigate to the next page after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/nextPage 0');
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animations/Animation - 1722614599720.json",
          repeat:true,
        ),
      ),
    );
  }
}
