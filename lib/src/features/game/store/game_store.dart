import 'dart:developer';

import '../game_controller.dart';
import 'package:mobx/mobx.dart';

part 'game_store.g.dart';

class GameStore = _GameStore with _$GameStore;

// The store-class
abstract class _GameStore with Store {
  GameController gameController = GameController();

  @observable
  String palavraSorteada = '';

  @observable
  String tiras = '';

  @observable
  ObservableList<bool> status = ObservableList<bool>();

  @observable
  int life = 0;

  @observable
  bool winner = false;

  @action
  void startGame() {
    status.clear();
    status.addAll([
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ]);
    tiras = '';
    gameController = GameController();
    tiras = gameController.iniciarJogo();
    life = 5;
    log('Start Game');
    palavraSorteada = gameController.palavraSorteada;
    winner = false;
  }

  @action
  void adcionarEntrada(String letra, int index) {
    status[index] = !status[index];
    
    final entradaValida = gameController.testarEntrada(letra);
    if (entradaValida) {
      tiras = gameController.replaceTiras(letra: letra);
      winner = gameController.gameIsWinner();
    } else {
      life = gameController.lostLife(vida: life);
      log(life.toString());
    }
  }
}
