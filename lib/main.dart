import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.cyanAccent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('dice'),
                const Text('text'),
                TextButton(
                  onPressed: () {},
                  child: Text('tap to bring dice'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
