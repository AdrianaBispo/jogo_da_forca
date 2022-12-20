import 'package:flutter/material.dart';

class Imagem extends StatelessWidget {
  const Imagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Image.asset(
        'imagens/imagem_inicial.png',
        height: 250,
        width: MediaQuery.of(context).size.width * .7,
      ),
    );
  }
  }