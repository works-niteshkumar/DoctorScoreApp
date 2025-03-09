import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/customwidgets/custom_text_style.dart';


class DobPickerController extends GetxController {
  var selectedDate = ''.obs;

  Future<void> pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: AppColor.primaryColor,
            colorScheme: const ColorScheme.light(primary: AppColor.primaryColor),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColor.primaryColor,
              foregroundColor: AppColor.primaryColor,
              titleTextStyle: TextStyle(fontSize: 20,color: AppColor.primaryColor, fontWeight: FontWeight.bold),
            ),
            textTheme: TextTheme(
              titleMedium: CustomTextStyle.titleStyle(),
              headlineMedium: const TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodyMedium: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      selectedDate.value = DateFormat('yyyy-MM-dd').format(picked);
    }
  }
}
