import 'package:doctor_score/features/usersection/registrationscreens/screens/reg_pan_info_screen.dart';
import 'package:doctor_score/utils/customwidgets/custom_button.dart';
import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/customwidgets/custom_text_form_field.dart';
import '../../homescreens/screens/home_screen.dart';
import '../../userdashboard/dashboard_screen.dart';

class RegAddressScreen extends StatelessWidget {
  const RegAddressScreen({super.key});

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
                        ),
                        const SizedBox(width: 3),
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: AppColor.primaryColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text('Step 3 of 3',
                          style: CustomTextStyle.contentStyle(fontSize: 13)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Icon(Icons.add_location_outlined,
                  color: Colors.green, size: 80),
              const SizedBox(height: 20),
              Text(
                "Enter Your Address",
                style: CustomTextStyle.titleStyle(fontSize: 20),
              ),
              Text(
                "Provide your current residential address",
                style: CustomTextStyle.contentStyle(fontSize: 16),
              ),
              const SizedBox(height: 40),
              CustomTextFormField(
                controller: nameController,
                hintText: "Flat/House No.",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "Building/Colony",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "Area",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "Pin Code",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "City",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "State",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                controller: nameController,
                hintText: "Country",
              ),
              const SizedBox(height: 30),
              CustomElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const DashboardScreen());
                  },
                  name: "Continue"),
              const SizedBox(height: 20),
              CustomOutlinedButton(
                  onPressed: () {
                    Get.back();
                  },
                  name: "Back"),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
