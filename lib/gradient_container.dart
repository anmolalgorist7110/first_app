import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft ;
const endAlignment = Alignment.bottomRight ;

class GradientContainer extends StatelessWidget{

 //constructor
 const GradientContainer({super.key});

  @override
  Widget build (BuildContext context){
      return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:  [
                 Color.fromARGB(255, 26, 2, 80) ,
                  Color.fromARGB(255, 45, 20, 98) ,
                ],
                begin: startAlignment ,
                end:  endAlignment,
            ),
          ),
          child: const Center(
            child: StyledText('hello world'), 
          ),
        );
  }
}
