import 'package:emotionapp/controller/on_boarding_controller.dart';
import 'package:emotionapp/data/mood_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

class LiquidSwipeWidget extends StatelessWidget {
  LiquidSwipeWidget({super.key});

  final OnboardingController controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe.builder(
      itemCount: moodData.length,
      itemBuilder: (context, index) {
        final data = moodData[index % moodData.length];
        return Container(
          width: double.infinity,
          color: controller.getPageColor(index),
          //_getPageColor(index),
          child: Stack(
            children: [
              Positioned(
                top: index == 1
                    ? MediaQuery.of(context).size.height * 0.3
                    : MediaQuery.of(context).size.height * 0.4,
                left: 0,
                right: 0,
                child: Center(
                  child: Lottie.asset(
                    data.asset,
                    width: index == 1 ? 300 : 250,
                    height: index == 1 ? 300 : 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.33,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    data.moodText,
                    style: TextStyle(
                      color: data.moodColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      liquidController: controller.liquidController,
      onPageChangeCallback: controller.onPageChange,
      waveType: WaveType.liquidReveal,
      fullTransitionValue: 880,
      enableSideReveal: true,
      enableLoop: true,
      ignoreUserGestureWhileAnimating: true,
      positionSlideIcon: 0.8,
      slideIconWidget: Icon(Icons.arrow_back_ios),
    );
  }
}
