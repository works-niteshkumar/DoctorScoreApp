import 'package:doctor_score/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splashscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Doctor Score',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
