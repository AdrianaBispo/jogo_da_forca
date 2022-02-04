import 'package:flutter/material.dart';
import 'package:jogo_da_forca/ui/popup_model.dart';
import 'package:jogo_da_forca/utils/app_routes.dart';

gameWinner(String word, context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return popUpModel(
          frase: 'Parabéns, ',
          word: 'Você acertou a palavra',
          color: const Color(0xff49d2a4),
          context: context,
          route: Navigator.pushReplacementNamed(context, AppRoutes.HOME),
        );
      });
}
