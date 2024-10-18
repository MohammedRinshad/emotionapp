import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.grey.shade200,
      ),
      onPressed: () {},
      child: Icon(Icons.arrow_back_ios),
    );
  }
}
