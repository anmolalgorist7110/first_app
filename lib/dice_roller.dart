import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random() ;

class DiceRoller extends StatefulWidget {

   const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
     return _DiceRollerState() ; 
  }
}

class _DiceRollerState extends State<DiceRoller>{

  
 var currentDiceRoll = 2 ;

  void rollDice (){
    setState(() {
         currentDiceRoll = randomizer.nextInt(6) + 1; // 0 <= num > 6 
    });

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
            const SizedBox(
              height: 40,
            ),
            TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 30 ,
              // ),
              foregroundColor: Colors.white ,
             textStyle: const TextStyle(
               fontSize: 28,
            ),), 
            child: const Text('Roll Dice'),
            )
          ],
        );
  }
}

  