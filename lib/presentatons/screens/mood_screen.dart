import 'package:emotionapp/presentatons/widgets/circle_shape_button.dart';
import 'package:emotionapp/presentatons/widgets/days_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null && details.primaryVelocity! > 0) {
          //moodController.navigateToOnboarding();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Positioned(
                  top: 16,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Statistics',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleButtonWidget(),
                          Text(
                            'July 11-17',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          CircleButtonWidget()
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned.fill(top: 130, child: DaysList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
