import 'package:emotionapp/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../data/mood_data.dart';
import '../../utils/constants/constants.dart';
import '../widgets/custom_button.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe.builder(
            itemCount: moodData.length,
            itemBuilder: (context, index) {
              final data = moodData[index % moodData.length];
              return Container(
                width: double.infinity,
                color: _getPageColor(index),
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
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 140.0),
              child: Text(
                'How are you\nfeeling today?',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: CustomButton(
                buttonText: moodData[0].buttonText,
                onPressed: () {
                  context.go('/moodscreen');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getPageColor(int index) {
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
