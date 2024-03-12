import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  // var activeDiceImage=  'assets/images/dice-2.png';
  void rollDice() {
    // var diceRoll =Random().nextInt(6)+1;

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage='assets/images/dice-$diceRoll.png';
    });
    // print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        // adding 20px size between image and text
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            // this is for padding and making spaces

            //   padding: const EdgeInsets.only(
            //     top:20,
            // ),

            textStyle: TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
