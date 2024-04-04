import 'package:cart/screen/slide_page1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToSlidePage();
  }

  Future _navigateToSlidePage() async {
    await Future.delayed(const Duration(seconds: 5));

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SlidePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/mainimage.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
