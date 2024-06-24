import 'package:dice_roller/screen_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const ScreenContainer(
          color1: Colors.blueGrey,
          color2: Colors.lightGreen,
        ),
      ),
    ),
  );
}
