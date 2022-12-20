import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jogo_da_forca/src/features/game/store/game_store.dart';
import 'package:provider/provider.dart';

//utils
import '../../../shared/utils/textstyle.dart';

class Texto extends StatefulWidget {
  const Texto({
    Key? key,
  }) : super(key: key);

  @override
  State<Texto> createState() => _TextoState();
}

class _TextoState extends State<Texto> {
  @override
  Widget build(BuildContext context) {
    final gameStore = Provider.of<GameStore>(context);

    return Observer(
      builder: (_) => Expanded(
        flex: 2,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Center(
            child: Text(
              gameStore.tiras,
              style: kHeadline1,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ),
    );
  }
}
