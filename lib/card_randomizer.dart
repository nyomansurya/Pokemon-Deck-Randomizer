import 'dart:math';

import 'package:flutter/material.dart';

class CardRandomizer extends StatefulWidget {
  const CardRandomizer({super.key});

  @override
  State<CardRandomizer> createState() => _CardRandomizerState();
}

class _CardRandomizerState extends State<CardRandomizer> {
  final randomizer = Random();
  var currentCard = 0;

  void randomizeCard() {
    setState(() {
      currentCard = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/pokemon_card_$currentCard.png',
          width: 300,
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue.shade900,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: randomizeCard,
          child: const Text('Randominze Cards'),
        ),
      ],
    );
  }
}
