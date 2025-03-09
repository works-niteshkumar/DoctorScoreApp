import 'package:doctor_score/utils/customwidgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/customwidgets/custom_text_form_field.dart';
import '../../../utils/customwidgets/custom_text_style.dart';
import '../registrationscreens/screens/reg_name_email_screen.dart';

class MobileOtpSendLoginScreen extends StatefulWidget {
  const MobileOtpSendLoginScreen({super.key});

  @override
  _MobileOtpSendLoginScreenState createState() => _MobileOtpSendLoginScreenState();
}

class _MobileOtpSendLoginScreenState extends State<MobileOtpSendLoginScreen> {
  bool isChecked = false;
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: context.mediaQuerySize.height,
        width: context.mediaQuerySize.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Icon(Icons.phone_android, size: 80, color: Colors.green),
              const SizedBox(height: 20),
              Text(
                "Enter Mobile Number",
                style: CustomTextStyle.titleStyle(fontSize: 22),
              ),
              const Text(
                "Linked to your bank account",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 80),
              CustomTextFormField(
                controller: mobileController,
                hintText: "Mobile Number",
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: AppColor.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "I agree to "),
                          TextSpan(
                            text: "Terms of use",
                            style: TextStyle(color: AppColor.primaryColor,fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(color: AppColor.primaryColor,fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " of DoctorScore "),
                          TextSpan(
                            text: "Experian.",
                            style: TextStyle(color: AppColor.primaryColor,fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "I agree to DoctorScore's Terms of Use and Privacy Policy & Autherized to communicate ...",
                  style: CustomTextStyle.contentStyle(fontSize: 14,color: Colors.grey),
                  textAlign: TextAlign.justify,
                ),
              ),
              // const SizedBox(height:15),
              const Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "Read more",
                    style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Text("Score Powered by"),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/experian.png", height: 30),
                ],
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                  onPressed: () {
                    if(isChecked){
                      // Navigate to OTP Screen
                      debugPrint("OTP Screen");
                      Get.to(()=>const RegStepOneScreen());
                    } else {
                      // Show error message
                      debugPrint("Please agree to Terms and Conditions");
                      // Show snackbar with error message
                      Fluttertoast.showToast(msg: "Please agree to Terms and Conditions",backgroundColor: Colors.red);
                    }
                  },
                  name: 'Get OTP',
                color: isChecked ? AppColor.primaryColor : Colors.grey,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}