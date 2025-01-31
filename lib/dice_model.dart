import 'dart:math';

import 'package:flutter/material.dart';

final randomiser = Random();

int diceValueRandomiser() {
  return randomiser.nextInt(6) + 1;
}

class DiceModel extends StatefulWidget {
  const DiceModel({super.key});

  @override
  State<DiceModel> createState() => _DiceModel();
}

class _DiceModel extends State<DiceModel> {
  late int currentDiceNumber;

  @override
  void initState() {
    currentDiceNumber = diceValueRandomiser();
    super.initState();
  }

  void rollDice() async {
    for (int i = 1; i < 5; i++) {
      await Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          currentDiceNumber = diceValueRandomiser();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentDiceEnum = DiceNumber.values[currentDiceNumber - 1];
    return Column(
      spacing: 80,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
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
            children: [
              ...currentDiceEnum.value.map((el) => DiceDot(isVisible: el))
            ],
          ),
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.yellow,
              ),
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text('Bring'),
        ),
      ],
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
  one(value: <bool>[
    false,
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    false,
  ]),
  two(value: <bool>[
    false,
    false,
    true,
    false,
    false,
    false,
    true,
    false,
    false,
  ]),
  three(value: <bool>[
    true,
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    true,
  ]),
  four(value: <bool>[
    true,
    false,
    true,
    false,
    false,
    false,
    true,
    false,
    true,
  ]),
  five(value: <bool>[
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
  ]),
  six(value: <bool>[
    true,
    false,
    true,
    true,
    false,
    true,
    true,
    false,
    true,
  ]);

  final List value;

  const DiceNumber({
    required this.value,
  });
}
