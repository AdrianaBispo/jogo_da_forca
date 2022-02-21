import 'package:flutter/material.dart';
import 'dart:math';

//funções - scr
import 'package:jogo_da_forca/src/funcoes.dart';
import '../constants.dart';

//UI
import '../ui/page_winner_popup.dart';
import '../ui/game_over_popup.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Jogo da Forca',
      home: SecondPageView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SecondPageView extends StatefulWidget {
  const SecondPageView({Key? key}) : super(key: key);

  @override
  _SecondPageViewState createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  List<String> banco = wordData; //palavra do banco do dados
  var aleatorio = Random();
  late String palavra;
  late String tiras;
  int vidas = 0;
  List<String> g = [];

  List<bool> status = [];

  List<dynamic> tro = [];
  List<String> o = ['__ '];

  final List<String> entries = alfabeto;
  novoJogo() {
    setState(() {
      palavra = banco[aleatorio.nextInt(banco.length - 1)];
      tiras = novo();
      vidas = 5;
      status = List.generate(26, (index){
        return false;
      });
      g.clear();
    });
  }

  @override
  void initState() {
    super.initState();
    novoJogo();
  }



  void _testando(String letra) {
    //bool n = dentro(g, letra);
    bool n = g.contains(letra);
    if (n == false) {
      // se g não tiver letra que o usuario digitou
      for (int k = 0; k < palavra.length; k++) {
        if (letra == palavra[k]) {
          g.add(palavra[k]);
        } else if (letra.replaceAll('a', 'ã') == palavra[k]) {
          g.add(letra.replaceAll('a', 'ã'));
        } else if (letra.replaceAll('e', 'ê') == palavra[k]) {
          g.add(letra.replaceAll('e', 'ê'));
        } else if (letra.replaceAll('e', 'é') == palavra[k]) {
          g.add(letra.replaceAll('e', 'é'));
        } else if (letra.replaceAll('c', 'ç') == palavra[k]) {
          g.add(letra.replaceAll('c', 'ç'));
        }
      } //for 2

      if (g.isNotEmpty) {
        for (int x = 0; x < palavra.length; x++) {
          for (int m = 0; m < g.length; m++) {
            if (g[m] == palavra[x]) {
              tro[x] = tro[x].replaceAll(tro[x], palavra[x]);
            } // if
          } //for 2
        } //for 1
      }
      tiras = tro.join('');
    } //if
  print('Lista var g: $g');
    //bool f = dentro(letra, palavra);
  bool f = palavra.contains(letra);
    if (f == false) {
      vidas--;
      if (vidas == 0) {
        await gameOver(palavra, context);
      }
    }

    if (g.length == palavra.length) {
      gameWinner(palavra, context);
    }
  }// _testando


  String novo() {
    for (int l = 0; l < palavra.length; l++) {
      tro += o;
    }
    String a = tro.join();
    return a;
  }

  Widget _button(final String alpha, bool _pressessed, int indice) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
      child: SizedBox(
        height: 40,
        width: 40,
        child: TextButton(
          child: Text(
            alpha,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22.0,
              color: Colors.black,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: _pressessed //false
                ? 0 //if true
                : 4, //if false
            shadowColor: const Color(0xFFEDEEF1),
            padding: const EdgeInsets.all(2.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          onPressed: () {
            setState(() {
              status[indice] ? null : status[indice] = !status[indice];
              _testando(alpha);
            });
          }, //onPressed
        ),
      ),
    );
  }

  Widget texto(BuildContext context, {required String word}) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Center(
          child: Text(
            word,
            style: const TextStyle(
              fontSize: 30.0,
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
            overflow: TextOverflow.visible,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            child: Image.asset(
              'imagens/lifes_$vidas.png',
              fit: BoxFit.cover,
              gaplessPlayback: true, //new line
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              texto(context, word: tiras),
            ],
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800,
            ),

            child: Container(
              width: size.width,
              margin:
                  const EdgeInsets.only(left: 15.0, right: 15, bottom: 15.0),

              child: Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.center,

                children: <Widget>[
                  _button(entries[0], status[0], 0),
                  _button(entries[1], status[1], 1),
                  _button(entries[2], status[2], 2),
                  _button(entries[3], status[3], 3),
                  _button(entries[4], status[4], 4),
                  _button(entries[5], status[5], 5),
                  _button(entries[6], status[6], 6),
                  _button(entries[7], status[7], 7),
                  _button(entries[8], status[8], 8),
                  _button(entries[9], status[9], 9),
                  _button(entries[10], status[10], 10),
                  _button(entries[11], status[11], 11),
                  _button(entries[12], status[12], 12),
                  _button(entries[13], status[13], 13),
                  _button(entries[14], status[14], 14),
                  _button(entries[15], status[15], 15),
                  _button(entries[16], status[16], 16),
                  _button(entries[17], status[17], 17),
                  _button(entries[18], status[18], 18),
                  _button(entries[19], status[19], 19),
                  _button(entries[20], status[20], 20),
                  _button(entries[21], status[21], 21),
                  _button(entries[22], status[22], 22),
                  _button(entries[23], status[23], 23),
                  _button(entries[24], status[24], 24),
                  _button(entries[25], status[25], 25),
                ], //Children
              ), // Wrap
            ), // Child
          ),
        ],
      ),
    );
  }
}
