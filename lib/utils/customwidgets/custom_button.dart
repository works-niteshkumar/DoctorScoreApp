import 'package:doctor_score/features/introscreens/get_started_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? elevation;
  final double? width;
  final Color? color;
  const CustomElevatedButton(
      {super.key,
      required this.onPressed,
      required this.name,
      this.elevation,
      this.width,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: elevation ?? 0,
            backgroundColor: color ?? AppColor.primaryColor,
            fixedSize: Size(width ?? context.mediaQuerySize.width, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
          )),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? elevation;
  final double? width;
  final Color? color;
  const CustomOutlinedButton(
      {super.key,
      required this.onPressed,
      required this.name,
      this.elevation,
      this.width,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            elevation: elevation ?? 0,
            backgroundColor: color ?? Colors.white,
            fixedSize: Size(width ?? context.mediaQuerySize.width, 45),
            side: const BorderSide(color: AppColor.primaryColor,width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 18,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
