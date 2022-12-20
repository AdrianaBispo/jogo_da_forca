import 'package:flutter/material.dart';
import 'popup_model.dart';

class GameOver extends StatelessWidget {
  final String word;
  const GameOver({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpModel(
      frase: 'Game Over',
      word: 'A palavra era $word',
      color: const Color(0xffd24977),
    );
  }
}
