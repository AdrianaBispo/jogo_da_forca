import 'package:flutter/material.dart';
import 'package:jogo_da_forca/pages/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _buildImagem(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    MediaQuery.of(context).padding.top;

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Image.asset(
        'imagens/imagem_inicial.png',
        height: 250,
        width: width * .7,
      ),
    );
  }

  Widget _buildButton () {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .7,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(124, 181, 248, 1),
              Color.fromRGBO(148, 135, 253, 1),
            ],
          )),
      child: TextButton(
        child: const Text(
          'Jogar',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22.0,
            color: Color(0xFFFFFFFF),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: _buildImagem(context)),
          Center(child: _buildButton())
        ],
      ),
    );
  }
}
