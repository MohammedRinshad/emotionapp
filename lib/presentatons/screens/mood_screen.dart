import 'package:emotionapp/controller/mood_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoodScreen extends StatelessWidget {
  final MoodController moodController = Get.put(MoodController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null && details.primaryVelocity! > 0) {
          moodController.navigateToOnboarding();
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
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Colors.grey.shade200,
                            ),
                            onPressed: () {
                              moodController.navigateToOnboarding();
                            },
                            child: Icon(Icons.arrow_back_ios),
                          ),
                          Text(
                            'July 11-17',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Colors.grey.shade200,
                            ),
                            onPressed: () {}, // Implement the forward button later
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  top: 130,
                  child: Obx(() {
                    return ListView.builder(
                      itemCount: moodController.moods.length, // Access the observable list
                      itemBuilder: (context, index) {
                        final mood = moodController.moods[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: moodController.getMoodColor(index),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${11 + index}',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      moodController.getDayOfWeek(index),
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  mood.image,
                                  height: 80,
                                  width: 80,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
