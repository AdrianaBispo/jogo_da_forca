import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

//components
import 'button.dart';

//store
import '../store/game_store.dart';

//utils
import '../../../shared/utils/constants.dart';

class Teclas extends StatelessWidget {
  const Teclas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameStore = Provider.of<GameStore>(context);

    return Observer(
      builder: (_) => ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 800,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15.0),
          child: Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.center,

            children: <Widget>[
              Button(
                letra: alfabeto[0],
                isPressed: gameStore.status[0],
                onPressed: () => gameStore.adcionarEntrada(
                  alfabeto[0],
                  0,
                ),
              ),
              Button(
                letra: alfabeto[1],
                isPressed: gameStore.status[1],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[1], 1),
              ),
              Button(
                letra: alfabeto[2],
                isPressed: gameStore.status[2],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[2], 2),
              ),
              Button(
                  letra: alfabeto[3],
                  isPressed: gameStore.status[3],
                  onPressed: () => gameStore.adcionarEntrada(alfabeto[3], 3)),
              Button(
                letra: alfabeto[4],
                isPressed: gameStore.status[4],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[4], 4),
              ),
              Button(
                letra: alfabeto[5],
                isPressed: gameStore.status[5],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[5], 5),
              ),
              Button(
                letra: alfabeto[6],
                isPressed: gameStore.status[6],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[6], 6),
              ),
              Button(
                letra: alfabeto[7],
                isPressed: gameStore.status[7],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[7], 7),
              ),
              Button(
                letra: alfabeto[8],
                isPressed: gameStore.status[8],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[8], 8),
              ),
              Button(
                letra: alfabeto[9],
                isPressed: gameStore.status[9],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[9], 8),
              ),
              Button(
                letra: alfabeto[10],
                isPressed: gameStore.status[10],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[10], 10),
              ),
              Button(
                letra: alfabeto[11],
                isPressed: gameStore.status[11],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[11], 11),
              ),
              Button(
                letra: alfabeto[12],
                isPressed: gameStore.status[12],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[12], 12),
              ),
              Button(
                letra: alfabeto[13],
                isPressed: gameStore.status[13],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[13], 13),
              ),
              Button(
                letra: alfabeto[14],
                isPressed: gameStore.status[14],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[14], 14),
              ),
              Button(
                letra: alfabeto[15],
                isPressed: gameStore.status[15],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[15], 15),
              ),
              Button(
                letra: alfabeto[16],
                isPressed: gameStore.status[16],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[16], 16),
              ),
              Button(
                letra: alfabeto[17],
                isPressed: gameStore.status[17],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[17], 17),
              ),
              Button(
                letra: alfabeto[18],
                isPressed: gameStore.status[18],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[18], 18),
              ),
              Button(
                letra: alfabeto[19],
                isPressed: gameStore.status[19],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[19], 19),
              ),
              Button(
                letra: alfabeto[20],
                isPressed: gameStore.status[20],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[20], 20),
              ),
              Button(
                letra: alfabeto[21],
                isPressed: gameStore.status[21],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[21], 21),
              ),
              Button(
                letra: alfabeto[22],
                isPressed: gameStore.status[22],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[22], 22),
              ),
              Button(
                letra: alfabeto[23],
                isPressed: gameStore.status[23],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[23], 23),
              ),
              Button(
                letra: alfabeto[24],
                isPressed: gameStore.status[24],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[24], 24),
              ),
              Button(
                letra: alfabeto[25],
                isPressed: gameStore.status[25],
                onPressed: () => gameStore.adcionarEntrada(alfabeto[25], 25),
              ),
            ], //Children
          ), // Wrap
        ),
      ), // Child
    );
  }
}
