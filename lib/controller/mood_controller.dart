import 'package:emotionapp/data/mood_data.dart';
import 'package:emotionapp/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoodController extends GetxController {
  var moods = moodData.obs; // Make your data observable

  Color getMoodColor(int index) {
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
        return AppColors.orange;
    }
  }

  String getDayOfWeek(int index) {
    switch (index) {
      case 0:
        return 'Monday';
      case 1:
        return 'Tuesday';
      case 2:
        return 'Wednesday';
      case 3:
        return 'Thursday';
      case 4:
        return 'Friday';
      case 5:
        return 'Saturday';
      default:
        return 'Unknown';
    }
  }

  void navigateToOnboarding() {
    Get.offNamed('/'); // Your route
  }
}
