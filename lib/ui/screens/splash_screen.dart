import 'package:english_learning_app/ui/screens/main_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainBottomNavBar(),
      ),
    );
  }

  @override
  void initState() {
    moveToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 180,
              width: 180,
            ),
            const SizedBox(height: 30),
            const Text(
              'English Learning',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'WrightFunk',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
