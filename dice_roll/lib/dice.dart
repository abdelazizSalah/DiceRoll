import 'package:flutter/material.dart';
// import '/GitHub/DiceRoll/dice_roll/assets/images/dice_number_1.png';

class Dice extends StatelessWidget {
  final img;
  const Dice({super.key, this.img});

  @override
  Widget build(BuildContext context) {
    return Image.asset(img, width: 100);
  }
}
