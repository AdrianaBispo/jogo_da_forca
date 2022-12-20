import 'package:flutter/material.dart';
import 'popup_model.dart';

class GameWinner extends StatelessWidget {
  const GameWinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PopUpModel(
      frase: 'Parabéns, ',
      word: 'Você acertou a palavra',
      color: Color(0xff49d2a4),
    );
  }
}
