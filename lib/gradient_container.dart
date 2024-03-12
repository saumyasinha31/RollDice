import 'package:flutter/material.dart';
import 'package:project1/dice_roller.dart';
// import 'package:project1/textstyle.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

  // final List<Color>colors;---> for approach 1

  final Color color1;
  final Color color2;

  //constructor initialization
  @override
  // this is approach 2

  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }

//<-------this is approach 1------>

// Widget build(context) {
//   return Container(
//     decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         )),
//     child: const Center(child: StyleText("hello")),
//   );
// }
}
