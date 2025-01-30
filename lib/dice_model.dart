import 'package:flutter/material.dart';

//TODO stateful
class DiceModel extends StatelessWidget {
  final currentNumberState = 1;

  const DiceModel({super.key});

  @override
  Widget build(BuildContext context) {
    final currentDiceEnum = DiceNumber.values[currentNumberState - 1];
    return Container(
      width: 210,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.yellow,
            Colors.lime,
          ],
        ),
      ),
      child: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(30.0),
          crossAxisSpacing: 24.0,
          mainAxisSpacing: 24.0,
          children: [...currentDiceEnum.value.map((el) => DiceDot(isVisible: el))],
      ),
    );
  }
}

class DiceDot extends StatelessWidget {
  const DiceDot({super.key, required this.isVisible});

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isVisible ? Colors.black : Colors.transparent,
        shape: BoxShape.circle,
      ),
    );
  }
}

enum DiceNumber {
  one(value: <bool>[false, false, false, false, true, false, false, false, false,]),
  two(value: <bool>[false, false, true, false, false, false, true, false, false,]),
  three(value: <bool>[true, false, false, false, true, false, false, false, true,]),
  four(value: <bool>[true, false, true, false, false, false, true, false, true,]),
  five(value: <bool>[true, false, true, false, true, false, true, false, true,]),
  six(value: <bool>[true, false, true, true, false, true, true, false, true,]);

  final List value;

  const DiceNumber({
    required this.value,
  });
}
