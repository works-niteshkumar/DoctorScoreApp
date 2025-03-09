import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:animate_do/animate_do.dart';
import '../../utils/app_color.dart';
import '../introscreens/get_started_screen.dart';
import '../usersection/homescreens/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        progress = (progress + 0.02).clamp(0.0, 1.0);
      });
      if (progress >= 1.0) {
        timer.cancel();
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const GetStartedScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.shadePrimaryColor100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // implement here bouncing asset logo
          Bounce(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fill,
                height: 100,
                width: 100,
              ),
            ),
          ),
          const SizedBox(height: 10),
          LinearPercentIndicator(
            width: 150.0,
            lineHeight: 15.0,
            percent: progress,
            backgroundColor: AppColor.shadePrimaryColor200,
            progressColor: AppColor.primaryColor,
            alignment: MainAxisAlignment.center,
            barRadius: const Radius.circular(8),
            center: Text(
              "${(progress * 100).toInt()}%",
              style: const TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(40),
//           child: Image.asset(
//             'assets/images/logo.png',
//             fit: BoxFit.fill,
//             height: 80,
//             width: 80,
//           ),
//         ),
//       ),
//     );
//   }
// }
