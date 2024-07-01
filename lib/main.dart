import 'package:dice_roller/screen_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ScreenContainer(
          color1: Colors.blueGrey,
          color2: Colors.lightGreen,
        ),
      ),
    ),
  );
}
