import 'dart:math';

import 'package:flutter/material.dart';

final randomiser = Random();

int diceValueRandomiser() {
  return randomiser.nextInt(6) + 1;
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRoller();
}

class _DiceRoller extends State<DiceRoller> {
  late int currentDiceRoll;

  @override
  void initState() {
    currentDiceRoll = diceValueRandomiser();
    super.initState();
  }

  void rollDice() async {
    for (int i = 0; i < 5; i++) {
      await Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          currentDiceRoll = diceValueRandomiser();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/images/dice-$currentDiceRoll.png'),
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text('Bring'),
        )
      ],
    );
  }
}
