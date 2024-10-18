import 'package:emotionapp/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnboardingController extends GetxController {
  final liquidController = LiquidController();
  var currentPage = 0.obs;

  void onPageChange(int page) {
    currentPage.value = page;
  }

  @override
  void onClose() {
    super.onClose();
  }
  
  Color getPageColor(int index) {
    switch (index) {
      case 0:
        return AppColors.pink;
      case 1:
        return AppColors.yellow;
      case 2:
        return AppColors.blue;
      case 3:
        return AppColors.indigo;
      case 4:
        return AppColors.orange;
      default:
        return AppColors.pink;
    }
  }
}
