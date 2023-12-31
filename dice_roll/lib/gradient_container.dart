import 'dart:math';

import 'package:flutter/material.dart';
import 'dice.dart';

class GradientContainer extends StatefulWidget {
  final startColor;
  final endColor;
  const GradientContainer(
      {super.key, required this.startColor, required this.endColor});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

final randomizer = Random();

class _GradientContainerState extends State<GradientContainer> {
  var dice1Number = 1;
  var dice2Number = 2;

  void rollDice() {
    setState(() {
      dice1Number = randomizer.nextInt(6) + 1;
      dice2Number = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roll"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [widget.startColor, widget.endColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
              width: 600,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Dice(img: './assets/images/dice_number_$dice1Number.jpg'),
                    Dice(img: './assets/images/dice_number_$dice2Number.jpg'),
                  ],
                ),
              ),
            ),
            TextButton(
                onPressed: rollDice,
                child: const Text(
                  "Roll Dices",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
