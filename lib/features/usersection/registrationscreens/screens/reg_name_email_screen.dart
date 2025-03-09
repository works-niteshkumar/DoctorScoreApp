import 'package:doctor_score/features/usersection/registrationscreens/screens/reg_pan_info_screen.dart';
import 'package:doctor_score/utils/customwidgets/custom_button.dart';
import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/customwidgets/custom_text_form_field.dart';

class RegStepOneScreen extends StatelessWidget {
  const RegStepOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: context.mediaQuerySize.height,
        width: context.mediaQuerySize.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80),
              SizedBox(
                height: 40,
                width: context.mediaQuerySize.width * 0.8,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: AppColor.primaryColor,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text('Step 1 of 3',
                          style: CustomTextStyle.contentStyle(fontSize: 13)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Icon(Icons.library_books, color: Colors.green, size: 80),
              const SizedBox(height: 30),
              Text(
                "Let's get you started",
                style: CustomTextStyle.titleStyle(fontSize: 20),
              ),
              Text(
                "No spam. Just credits insights",
                style: CustomTextStyle.contentStyle(fontSize: 16),
              ),
              const SizedBox(height: 60),
              CustomTextFormField(
                controller: nameController,
                hintText: "First Name",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "Last Name",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "Email Address",
              ),
              const SizedBox(height: 80),
              CustomElevatedButton(
                  onPressed: () {
                    Get.to(() => const RegPanInfoScreen());
                  },
                  name: "Continue"),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
