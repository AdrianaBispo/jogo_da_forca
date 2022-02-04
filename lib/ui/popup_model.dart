import 'package:flutter/material.dart';

popUpModel(
    {required String frase,
    required String word,
    required Color color,
    required Future<Object?> pressed}) {
  AlertDialog(
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
          ),
          child: const Text(
            'closer',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: Color(0XFFFFFFFF),
            ),
          ),
          onPressed: () => pressed),
    ],
  );
}
