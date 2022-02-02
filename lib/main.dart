//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
import 'package:jogo_da_forca/pages/inicial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Home Page',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

