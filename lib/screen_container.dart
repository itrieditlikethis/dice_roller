import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({
    super.key,
    required this.color1,
    required this.color2,
  });

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: Text(
          'pic of a dice',
        ),
      ),
    );
  }
}
