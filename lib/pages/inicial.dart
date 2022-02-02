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

    return Container(
      height: screenHeight * .7,
     
      child: const Center(
        child: Text(
          'Jogo da Forca',
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
    return Container(
      height: 70,
      //color: Colors.,
      child: Center(

        child: SizedBox(
          width: 240,
          height: 50,
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
              backgroundColor:  Color(0xff2b73b9),
              minimumSize: const Size(120, 50),
              maximumSize: const Size(240, 50),
              alignment: Alignment.center,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
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
      backgroundColor: Color(0xffefeeee),
      
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

