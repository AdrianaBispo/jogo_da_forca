import 'package:flutter/material.dart';
//utils
import '../../../shared/utils/textstyle.dart';

class Button extends StatelessWidget {
  final String letra;
  final bool isPressed;
  final void Function()? onPressed;
  const Button({Key? key, required this.letra, required this.isPressed, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
      child: SizedBox(
        height: 40,
        width: 40,
        child: TextButton(
          child: Text(
            letra,
            style: kButtonSecondary,
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: isPressed //false
                ? 0 //if true
                : 4, //if false
            shadowColor: const Color(0xFFEDEEF1),
            padding: const EdgeInsets.all(2.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}