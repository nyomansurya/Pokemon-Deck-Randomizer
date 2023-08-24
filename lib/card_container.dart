import 'package:flutter/material.dart';
import 'package:pokemon_deck_randomizer/card_randomizer.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.blue.shade200,
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: const Center(
        child: CardRandomizer(),
      )
    );
  }
}
