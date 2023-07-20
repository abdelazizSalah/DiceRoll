import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  final img;
  const Dice({super.key, this.img});

  @override
  Widget build(BuildContext context) {
    return Image.asset(img, width: 200);
  }
}
