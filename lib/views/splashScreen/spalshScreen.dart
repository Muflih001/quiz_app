import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/utils/constants/ImageConstents.dart';
import 'package:quiz_app/utils/constants/colorConstatns.dart';
import 'package:quiz_app/views/flutterScreen/flutterScreen.dart';
import 'package:quiz_app/views/selectionScreen/selectionScreen.dart';

// import 'package:quiz_app/views/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SelectionScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Lottie.asset(Imageconstents.spalsh_icon),
      ),
    );
  }
}
