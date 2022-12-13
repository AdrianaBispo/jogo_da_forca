// import 'package:flutter/material.dart';
// class HangButton extends StatelessWidget {
//   HangButton({this.alpha, this.onPress, this.indice, this.pressessed}) : super(key: key);

//   late String alpha;
//   late Function onPress;
//   late int indice;
//   late bool pressessed;
  

//   @override
//   Widget build(BuildContext context) {
//     return Container (
//       //height: 50,
//       //width: 50,
//       //color: Colors.purple[500],
//       margin:  const EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
//       //padding: const EdgeInsets.symmetric(vertical: 3.0),
//       //padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 6.0),
//       child: SizedBox(
//         height: 40,
//         width: 40,

//         child: TextButton(
//           child: Text(
//             alpha,
//             style: const TextStyle(
//               fontWeight: FontWeight.normal,
//               fontSize: 20.0,
//               color: Colors.white,
//             ),
//           ),
//           style: TextButton.styleFrom(
//             backgroundColor: pressessed ? Colors.lightBlue[100] : Colors.lightBlue[600],//if true - else
//             elevation: 4,
//             shadowColor: Colors.grey[50],
//             padding: const EdgeInsets.all(2.0),
//             //alignment: Alignment.center,
//             shape:  RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(3),
//             ),
//           ),
//           onPressed: (){
//             onPress;
//             // setState(() {
//             //   pressionado[indice]
//             //   ? null
//             //   //: () => chamado(indice);
//             //   : pressionado[indice] = !pressionado[indice];
//             //   //chamado();
//             //   //_testando(alpha);
//             // });
//           },//onPressed
//         ),
//       ),


//     );
//   }
// }