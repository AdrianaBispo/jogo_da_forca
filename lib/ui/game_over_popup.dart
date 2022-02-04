import 'package:flutter/material.dart';
import 'package:jogo_da_forca/utils/app_routes.dart';

void gameOver(String word, context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Game Over',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
              color: Color(0xff2b73b9),
            ),
          ),
          content: Text(
            'A palavra era $word',
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
              color: Color(0xffd24977),
            ),
          ),
          actions: <Widget>[
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffd24977),
                ),
                child: const Text(
                  'closer',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: Color(0XFFFFFFFF),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.HOME,
                  );
                }),
          ],
        );
      },
    );
  }