import 'package:flutter/material.dart';
import '/GitHub/DiceRoll/dice_roll/';

class Dice extends StatelessWidget {
  final img;
  const Dice({super.key, this.img});

  @override
  Widget build(BuildContext context) {
    return Image.asset('.', width: 200);
  }
}
