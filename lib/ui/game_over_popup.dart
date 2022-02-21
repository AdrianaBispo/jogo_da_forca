import 'package:flutter/material.dart';
import 'package:jogo_da_forca/ui/popup_model.dart';
import 'package:jogo_da_forca/utils/app_routes.dart';

gameOver(String word, dynamic context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return popUpModel(
        frase: 'Game Over',
        word: 'A palavra era $word',
        color: const Color(0xffd24977),
        context: context,
        route: AppRoutes.HOME,
      );
    },
  );
}
