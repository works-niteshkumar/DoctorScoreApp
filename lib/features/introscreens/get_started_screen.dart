

import 'package:doctor_score/utils/customwidgets/custom_button.dart';
import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_color.dart';
import '../usersection/login/mobile_otp_send_login_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: context.mediaQuerySize.height,
        width: context.mediaQuerySize.width,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to",
                style: CustomTextStyle.titleStyle(),
              ),
              const SizedBox(height: 15),
              Text(
                "DoctorScore",
                style: CustomTextStyle.titleStyle(fontSize: 54),
              ),
              const SizedBox(height: 40),
              Container(
                height: 8,
                width: 70,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFeature(Icons.edit, "Check credit score\ninstantly"),
                  _buildFeature(Icons.settings, "Learn to\nManage Credit"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFeature(Icons.block, "No Ads,\nNo Spam!"),
                  _buildFeature(Icons.lock, "Totally Safe and\nSecure"),
                ],
              ),
              const SizedBox(height: 60),
              CustomElevatedButton(
                  onPressed: (){
                    Get.to(()=> const MobileOtpSendLoginScreen());
                  },
                name: 'Check My Score',
                width: 200,
              ),
            ]),
      ),
    );
  }
  Widget _buildFeature(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(65),
                topRight: Radius.circular(65),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                radius: 30,
                child: Icon(icon, color: Colors.green, size: 30),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
