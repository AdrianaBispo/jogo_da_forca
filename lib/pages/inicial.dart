import 'package:flutter/material.dart';
import 'package:jogo_da_forca/pages/game.dart';

/*
pagina inicial
pagina do jogo
game over 
gamer win
*/
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var appBarVar = AppBar(
    title: const Text("Jogo da Forca"),
    elevation: 0,
    );


  Widget _buildText(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = ( size.height - appBarVar.preferredSize.height ) - MediaQuery.of(context).padding.top;

    return SizedBox(
      height: screenHeight * .7,
     
      child: const Center(
        child: Text(
          'Futura Imagem',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 30.0,
            color: Color(0xff2b73b9),
          ),
        ),
      ),
    );
  }

  Widget _buildButton (){
    return SizedBox(
      height: 70,
      child: Center(

        child: Container(
          width: 240,
          height: 50,
          decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(1, 124,181,248),
            Color.fromARGB(1, 148,135,253),
          ],
        )
      ),
          child: TextButton(  
            child: const Text(
              'Jogar',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 17.0,
                color: Color(0xffefeeee),
                
              ),
            ),
            style: TextButton.styleFrom(
              //backgroundColor: const Color(0xff2b73b9),
              minimumSize: const Size(120, 50),
              maximumSize: const Size(240, 50),
              alignment: Alignment.center,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )
            ),//style
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
          ),

        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      
      //appBar: appBarVar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _buildText(context),
          _buildButton(),
        ],
      ),

        //Bem vindo ao jogo da forca
        //button 'jogar'
    );
  }
}

