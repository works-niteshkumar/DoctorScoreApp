import 'package:doctor_score/features/usersection/registrationscreens/controllers/gender_select_controller.dart';
import 'package:doctor_score/features/usersection/registrationscreens/screens/reg_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/customwidgets/custom_button.dart';
import '../../../../utils/customwidgets/custom_text_form_field.dart';
import '../../../../utils/customwidgets/custom_text_style.dart';
import '../controllers/dob_controller.dart';

class RegPanInfoScreen extends StatelessWidget {
  const RegPanInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController panController = TextEditingController();
    final DobPickerController dobPickerController = Get.put(DobPickerController());
    final GenderSelectController genderSelectController = Get.put(GenderSelectController());

    return Scaffold(
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
                width: context.mediaQuerySize.width*0.8,
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
                            color:AppColor.primaryColor,
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
                      child: Text(
                          'Step 2 of 3',
                          style: CustomTextStyle.contentStyle(fontSize: 13)
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Icon(Icons.library_books,color: Colors.green,size: 80),
              const SizedBox(height: 30),
              Text(
                "Enter Your Pan Details",
                style: CustomTextStyle.titleStyle(fontSize: 20),
              ),
              Text(
                "As per your Government Documents",
                style: CustomTextStyle.contentStyle(fontSize: 16),
              ),
              const SizedBox(height: 60),
              CustomTextFormField(
                controller: panController,
                hintText: "Pan Number",
              ),
              const SizedBox(height:30),
            Obx(() => TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: dobPickerController.selectedDate.isEmpty ? "Date of Birth" : dobPickerController.selectedDate.value,
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_month, color: AppColor.primaryColor),
                  onPressed: () => dobPickerController.pickDate(context),
                ),
              ),
            )),
              const SizedBox(height:30),
              const Row(
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(color: Colors.grey, fontSize:18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Obx(() => Row(
                children: ["Male", "Female", "Others"].map((gender) {
                  bool isSelected = genderSelectController.selectedGender.value == gender;
                  return GestureDetector(
                    onTap: () => genderSelectController.selectGender(gender),
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColor.primaryColor : Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        gender,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )),
              const SizedBox(height:80),
              CustomElevatedButton(
                  onPressed: (){
                    debugPrint("selected gender: ${genderSelectController.selectedGender}");
                    Get.to(()=> const RegAddressScreen());
                  },
                  name: "Continue"
              ),
              const SizedBox(height:20),
              CustomOutlinedButton(
                  onPressed: (){
                    Get.back();
                  },
                  name: "Back"
              ),
              const SizedBox(height:30),
            ],
          ),
        ),
      ),
    );
  }
}
