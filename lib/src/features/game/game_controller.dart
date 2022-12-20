import 'dart:math';
//utils
import 'package:flutter/foundation.dart';

import '../../shared/utils/constants.dart';

abstract class IGameController {
  void novaPalavra() {}
  iniciarJogo() {}
  testarEntrada(String letra) {}
  replaceTiras ({required String letra}) {}
  gameIsWinner() {}
  lostLife({required int vida}) {}
}

class GameController extends IGameController{
  List<String> banco = wordData; //palavra do banco do dados
  Random random = Random();
  late String palavraSorteada;
  late String _tiras;
  int _vidas = 0;
  List<String> _g = [];

  List<dynamic> tro = [];
  List<String> o = ['__ '];

  final List<String> entries = alfabeto;

  @override
  String iniciarJogo() {
    palavraSorteada = banco[random.nextInt(banco.length - 1)];
    _tiras = novaPalavra();
    _vidas = 5;
    _g.clear();
    return _tiras;
  }
  
  @override
  bool testarEntrada(String letra) {
    bool n = _g.contains(letra);
    debugPrint('print n ${n.toString()}');
    bool resultado = false;

    if (n == false) {
      // se g não tiver letra que o usuario digitou
      for (int k = 0; k < palavraSorteada.length; k++) {
        if (letra == palavraSorteada[k]) {
          _g.add(letra);

          debugPrint(_g.toString());
          resultado = true;
        } else if (letra.replaceAll('a', 'ã') == palavraSorteada[k]) {
          _g.add(letra.replaceAll('a', 'ã'));

          debugPrint(_g.toString());
          resultado = true;
        } else if (letra.replaceAll('e', 'ê') == palavraSorteada[k]) {
          _g.add(letra.replaceAll('e', 'ê'));

          debugPrint(_g.toString());
          resultado = true;
        } else if (letra.replaceAll('e', 'é') == palavraSorteada[k]) {
          _g.add(letra.replaceAll('e', 'é'));

          debugPrint(_g.toString());
          resultado = true;
        } else if (letra.replaceAll('c', 'ç') == palavraSorteada[k]) {
          _g.add(letra.replaceAll('c', 'ç'));

          debugPrint(_g.toString());
          resultado = true;
        }
        debugPrint(_g.toString());
        //resultado = false;
      } //for

    }

    return resultado;
  }

  @override
  String replaceTiras({required String letra}) {
    if (_g.isNotEmpty) {
      for (int x = 0; x < palavraSorteada.length; x++) {
        for (int m = 0; m < _g.length; m++) {
          if (_g[m] == palavraSorteada[x]) {
            tro[x] = tro[x].replaceAll(tro[x], palavraSorteada[x]);
          } // if
        } //for 2
      } //for 1
    }
    _tiras = tro.join('');
    return _tiras;
  } // _testando

  @override
  int lostLife({required int vida}) {
    _vidas--;
    return _vidas;
  }

  @override
  bool gameIsWinner() {
    if (_g.length == palavraSorteada.length) {
      return true;
    } else {
      return false;
    }
  }

  
  @override
  String novaPalavra() {
    for (int l = 0; l < palavraSorteada.length; l++) {
      tro += o;
    }
    String a = tro.join();
    return a;
  }
}
