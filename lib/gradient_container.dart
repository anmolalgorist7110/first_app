import 'package:flutter/material.dart';


const startAlignment = Alignment.topLeft ;
const endAlignment = Alignment.bottomRight ;

class GradientContainer extends StatelessWidget{

 //constructor
 const GradientContainer( this.color1 , this.color2 , {super.key});

 // constructor function
 const GradientContainer.purple({super.key})
 : color1 = Colors.deepPurple,
   color2 = Colors.indigo;

 final Color color1 ;
 final Color color2 ;

  @override
  Widget build (BuildContext context){
      return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: [color1 , color2],
                begin: startAlignment ,
                end:  endAlignment,
            ),
          ),
          child:   Center(
            child: Image.asset('assets/images/dice-1.png' , 
            width: 200,
            ), 
          ),
        );
  }
}



/*----------------------------------------------------------------------------------------*/

// class GradientContainer extends StatelessWidget{

//  //constructor
//  const GradientContainer( {super.key , required this.colors});

// // instead of using of the final keyword we cant use const beacuse the list can be edited
//  final List<Color> colors;

//   @override
//   Widget build (BuildContext context){
//       return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//                 begin: startAlignment ,
//                 end:  endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('hello world'), 
//           ),
//         );
//   }
// }

/*----------------------------------------------------------------------------------------*/
