import 'package:emotionapp/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class HeadingTextWidget extends StatelessWidget {
  final String headText;

  const HeadingTextWidget({
    Key? key,
    required this.headText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 140.0),
        child: Text(
          headText,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
