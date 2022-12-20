import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//store
import 'store/game_store.dart';
//components
import 'components/teclas.dart';
import 'components/hearts.dart';
import 'components/texto.dart';
//utils

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late GameStore gameStore;

  @override
  void initState() {
    gameStore = context.read<GameStore>();
    gameStore.startGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F9FD),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Hearts(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Texto(),
            ],
          ),
          const Teclas(),
        ],
      ),
    );
  }
}
