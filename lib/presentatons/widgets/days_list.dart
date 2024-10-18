import 'package:emotionapp/controller/mood_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class DaysList extends StatelessWidget {
  DaysList({super.key});
  final MoodController moodController = Get.put(MoodController());
  @override
  Widget build(BuildContext context) {
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
  }
}
