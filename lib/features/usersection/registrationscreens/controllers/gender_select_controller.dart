import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderSelectController extends GetxController {
  var selectedGender = ''.obs;

  void selectGender(String gender) {
    selectedGender.value = gender;
    debugPrint("Selected: $gender");
  }

  void printSelectedGender() {
    debugPrint("Final Selected Gender: ${selectedGender.value}");
  }
}