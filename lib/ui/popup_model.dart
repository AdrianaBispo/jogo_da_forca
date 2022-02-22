import 'package:flutter/material.dart';
import 'package:jogo_da_forca/utils/app_routes.dart';

popUpModel({
  required String frase,
  required String word,
  required Color color,
  required dynamic context,
  //required route,
}) {
 return  AlertDialog(
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
