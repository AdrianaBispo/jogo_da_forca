import 'package:flutter/material.dart';
//utils
import '../../../shared/utils/app_routes.dart';

class PopUpModel extends StatelessWidget {
  final String frase;
  final String word;
  final Color color;
  const PopUpModel({
    Key? key,
    required this.frase,
    required this.word,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        frase,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 22.0,
          color: color,
        ),
      ),
      content: Text(
        word,
        style: const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 20.0,
          color: Colors.black87,
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: const CircleBorder(),
          ),
          child: const Text(
            'x',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
              color: Color(0XFFFFFFFF),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutes.HOME);
          },
        ),
      ],
    );
  }
}
