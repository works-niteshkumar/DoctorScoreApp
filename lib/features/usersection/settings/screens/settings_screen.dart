import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: CustomTextStyle.appBarStyle,
        ),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}
