import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy',
        style: CustomTextStyle.appBarStyle,
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: AppColor.primaryColor,
      ),
    );
  }
}
