import 'package:flutter/material.dart';

//screens
import 'package:jogo_da_forca/pages/game.dart';
import 'package:jogo_da_forca/pages/home_page.dart';

//routes
import 'utils/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: '',
      ),//theme
      routes: {
        AppRoutes.HOME: (ctx) => const HomePage(),
        AppRoutes.GAME: (ctx) => const SecondPage(),
      }
    );
  }
}
