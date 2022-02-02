import 'package:flutter/material.dart';
import 'dart:math';
import '../my_app.dart';


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
  const SecondPageView({ Key? key }) : super(key: key);

  @override
  _SecondPageViewState createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  List<String> banco = ['bicicleta', 'sino', 'passeio', 'escritor', 'bolo', 'balão',
   'pé', 'chuveiro', 'vilão', 'porco', 'inglês',
  'coração'] ;
  var aleatorio = Random();
  late String palavra;
  late String tiras ;
  int vidas = 0;
  List<String> g = [];

  List<bool> status = [];

  List<dynamic> tro = [];
  List<String> o = ['__ '];

  final List<String> entries = <String>['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v','x', 'w', 'y', 'z'];
  
  novoJogo(){
    setState((){
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

  bool dentro(var contem, var contido){ //verifa se a palavra tem a letra
    contem = contem.toString();
    contido = contido.toString();
    bool retornado = false;
    for (int of = 0; of < contem.length; of++){
      for (int o = 0; o < contido.length; o++){
        if (contido[o] == contem[of]){
          retornado = true;
        }//if
      }// for2
    }// for 1
    return retornado;
  }//dentro

  void _testando(String letra){
    bool n = dentro(g, letra);
    if (n == false){ // se g não tiver letra
      for (int k = 0; k < palavra.length; k++){
        
        if (letra == palavra[k]){
          g.add(palavra[k]);
          
        }else if (letra.replaceAll('a', 'ã') == palavra[k]){
          g.add(letra.replaceAll('a', 'ã'));

        }else if (letra.replaceAll('e', 'ê') == palavra[k]){
          g.add(letra.replaceAll('e', 'ê'));

        }else if (letra.replaceAll('e', 'é') == palavra[k]){
          g.add(letra.replaceAll('e', 'é'));

        }else if (letra.replaceAll('c', 'ç') == palavra[k]){
          g.add(letra.replaceAll('c', 'ç'));
        }
      }//for 2

      if (g.isNotEmpty){
        for (int x = 0; x < palavra.length; x++){
          for (int m = 0; m < g.length; m++){
            if (g[m] == palavra[x]){ 
              tro[x] = tro[x].replaceAll(tro[x], palavra[x]);
            }// if 
          }//for 2
        }//for 1
      }
        tiras = tro.join('');
    }//if

    bool f = dentro(letra, palavra);
    if (f == false){
      vidas--;
      if (vidas == 0){
        _gameOver(palavra);
      }
    }

    if(g.length == palavra.length ){
      _gameWinner();
    }
  }


  void _gameOver(String word){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text(
            'Game Over',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
              color: Color(0xff2b73b9),
            ),
          ),
          content: Text(
            'A palavra era $word',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
              color: Color(0xff2b73b9),
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff2b73b9),
              ),
              child: const Text(
                'closer',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color:  Color(0xffefeeee),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              }
            ),
          ],
        );
      },
    );
  }



  void _gameWinner(){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text(
            'Parabéns, ',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
              color: Color(0xff2b73b9),
            ),
          ),
          content: const Text(
            'Você acertou a palavra',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
              color: Color(0xffefeeee),
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff2b73b9),
              ),
              child: const Text(
                'closer',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color: Color(0xffefeeee),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              }
            ),
          ],
        );
      },
    );
  }

  
  String novo(){
    for (int l = 0; l < palavra.length; l++){
      tro += o;
    }
    String a = tro.join();
    return a;
  }


  Widget _button(final String alpha, bool _pressessed, int indice) {
    return Container (
      margin:  const EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
      child: SizedBox(
        height: 40,
        width: 40,

        child: TextButton(
          child: Text(
            alpha,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: _pressessed ? Color(0xffe8f3f9) : Color(0xff54a5d5),//if true - else
            elevation: 4,
            shadowColor: Colors.grey[50],
            padding: const EdgeInsets.all(2.0),
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          onPressed: (){
            setState(() {
              status[indice]
              ? null
              : status[indice] = !status[indice];
              _testando(alpha);
            });

          },//onPressed
        ),
      ),


    );
  }



  Widget texto(BuildContext context, {required String word}){
    //var size = MediaQuery.of(context).size; //colocar a cor mais escura que a do fundo
    return Expanded(
      flex: 2,
      child: Container (

        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Center(
          child: Text(
            word,
            style: const TextStyle(
              fontSize: 30.0,
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
      //backgroundColor: Color(0xffefeeee),
      appBar: AppBar(
        backgroundColor: Color(0xffefeee),
        title: const Text(
          'Jogo da Forca',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20.0,
            color: Color(0xff2b73b9),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.home,
            color: Color(0xff2b73b9),
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),

      ),
      //Design
      
      body: Container(
        color: Color(0xffefeee),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 30,
              child: Image.asset(
                'imagens/lifes_$vidas.png',
                //height: 100,
                //width: 200,
                //gaplessPlayback: true,
                fit: BoxFit.cover,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget> [
                texto(context, word: tiras),
              ],
            ),
            
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 250,
                maxWidth: 500,
              ),

              child: Container(
                width: size.width / 2,
                //color: Colors.purple[100],
                margin: const EdgeInsets.symmetric(vertical: 3.0),
                padding: const EdgeInsets.symmetric(vertical: 5.0),

                child: Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.center,

                  children: <Widget> [
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
                  ],//Children
                ), // Wrap
              ),// Child
            ),
          ],
        ),
      ),
    );
  }
}