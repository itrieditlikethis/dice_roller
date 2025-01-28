import 'package:flutter/material.dart';

class DiceModel extends StatelessWidget {
  const DiceModel({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.all(30.0),
        crossAxisSpacing: 24.0,
        mainAxisSpacing: 24.0,
        children: List.generate(9, (int index) {
          return DiceDot();
        },),
      ),
    );
  }
}

class DiceDot extends StatelessWidget {
  const DiceDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
