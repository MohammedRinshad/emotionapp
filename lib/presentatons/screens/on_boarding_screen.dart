import 'package:emotionapp/controller/on_boarding_controller.dart';
import 'package:emotionapp/presentatons/widgets/heading_text_widget.dart';
import 'package:emotionapp/presentatons/widgets/liquid_swipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../data/mood_data.dart';
import '../widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipeWidget(),
          HeadingTextWidget(headText: "How are you\nFeeling today?"),
          CustomButton(
            buttonText: moodData[0].buttonText,
            onPressed: () {
              context.go('/moodscreen');
            },
          ),
        ],
      ),
    );
  }
}
