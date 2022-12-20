import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jogo_da_forca/src/features/game/components/popup_model.dart';
import 'package:provider/provider.dart';

//components
import 'page_winner_popup.dart';
//controller
import '../game_controller.dart';
//utils

import 'package:jogo_da_forca/src/features/game/store/game_store.dart';

import 'game_over_popup.dart';

class Hearts extends StatelessWidget {
  const Hearts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameStore = Provider.of<GameStore>(context);

    return Observer(
      builder: (_) => Column(
        children: <Widget>[
          if (gameStore.life == 0) GameOver(word: gameStore.palavraSorteada),
          if (gameStore.winner) const GameWinner(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            child: Image.asset(
              'imagens/lifes_${gameStore.life}.png',
              fit: BoxFit.cover,
              gaplessPlayback: true, //new line
            ),
          ),
        ],
      ),
    );
  }
}
