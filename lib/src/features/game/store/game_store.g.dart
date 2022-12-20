// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameStore on _GameStore, Store {
  late final _$palavraSorteadaAtom =
      Atom(name: '_GameStore.palavraSorteada', context: context);

  @override
  String get palavraSorteada {
    _$palavraSorteadaAtom.reportRead();
    return super.palavraSorteada;
  }

  @override
  set palavraSorteada(String value) {
    _$palavraSorteadaAtom.reportWrite(value, super.palavraSorteada, () {
      super.palavraSorteada = value;
    });
  }

  late final _$tirasAtom = Atom(name: '_GameStore.tiras', context: context);

  @override
  String get tiras {
    _$tirasAtom.reportRead();
    return super.tiras;
  }

  @override
  set tiras(String value) {
    _$tirasAtom.reportWrite(value, super.tiras, () {
      super.tiras = value;
    });
  }

  late final _$statusAtom = Atom(name: '_GameStore.status', context: context);

  @override
  ObservableList<bool> get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(ObservableList<bool> value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$lifeAtom = Atom(name: '_GameStore.life', context: context);

  @override
  int get life {
    _$lifeAtom.reportRead();
    return super.life;
  }

  @override
  set life(int value) {
    _$lifeAtom.reportWrite(value, super.life, () {
      super.life = value;
    });
  }

  late final _$winnerAtom = Atom(name: '_GameStore.winner', context: context);

  @override
  bool get winner {
    _$winnerAtom.reportRead();
    return super.winner;
  }

  @override
  set winner(bool value) {
    _$winnerAtom.reportWrite(value, super.winner, () {
      super.winner = value;
    });
  }

  late final _$_GameStoreActionController =
      ActionController(name: '_GameStore', context: context);

  @override
  void startGame() {
    final _$actionInfo =
        _$_GameStoreActionController.startAction(name: '_GameStore.startGame');
    try {
      return super.startGame();
    } finally {
      _$_GameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adcionarEntrada(String letra, int index) {
    final _$actionInfo = _$_GameStoreActionController.startAction(
        name: '_GameStore.adcionarEntrada');
    try {
      return super.adcionarEntrada(letra, index);
    } finally {
      _$_GameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
palavraSorteada: ${palavraSorteada},
tiras: ${tiras},
status: ${status},
life: ${life},
winner: ${winner}
    ''';
  }
}
