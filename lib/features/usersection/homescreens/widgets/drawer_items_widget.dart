import 'package:doctor_score/features/usersection/about/AboutScreen.dart';
import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_color.dart';
import '../../helpandsupports/HelpAndSupportScreen.dart';
import '../../privacypolicy/privacy_policy_screen.dart';
import '../../settings/screens/settings_screen.dart';

class DrawerItemsWidget extends StatelessWidget {
  const DrawerItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
          child: Column(
            children: [
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/images/logo.png',
                height: 80,
                ),
              ),
              const SizedBox(height: 10),
              Text('Preeyam Yadav',
              style: CustomTextStyle.titleStyle(
                color: Colors.white,
              ),
              ),
            ],
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.home,color: Colors.white,size: 25),
          title: Text('Home',
          style: CustomTextStyle.subtitleStyle(color: Colors.white),
          ),
          onTap: () => Get.back(),
        ),
        ListTile(
          leading: const Icon(Icons.settings,color: Colors.white,size: 25),
          title: Text('Settings',
            style: CustomTextStyle.subtitleStyle(color: Colors.white),),
          onTap: () => Get.to(()=>const SettingsScreen()),
        ),
        ListTile(
          leading: const Icon(Icons.question_mark,color: Colors.white,size: 25),
          title: Text('About',
            style: CustomTextStyle.subtitleStyle(color: Colors.white),),
          onTap: () => Get.to(()=> const AboutScreen()),
        ),
        ListTile(
          leading: const Icon(Icons.privacy_tip,color: Colors.white,size: 25),
          title: Text('Privacy Policy',
            style: CustomTextStyle.subtitleStyle(color: Colors.white),),
          onTap: () => Get.to(()=> const PrivacyPolicyScreen()),
        ),
        ListTile(
          leading: const Icon(Icons.help,color: Colors.white,size: 25),
          title: Text('Help & Supports',
            style: CustomTextStyle.subtitleStyle(color: Colors.white),),
          onTap: () => Get.to(()=> const HelpAndSupportScreen()),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.logout,color: Colors.white,size: 25),
          title: Text('Logout',
            style: CustomTextStyle.subtitleStyle(color: Colors.white),),
          onTap: () => {},
        ),
      ],
    );
  }
}
