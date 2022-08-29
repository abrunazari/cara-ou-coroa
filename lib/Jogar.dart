

import 'dart:math';
import 'package:caraoucoroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({Key? key}) : super(key: key);

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

   void _exibirResultado (){

     var itens = ["cara", "coroa"];
     var numero = Random().nextInt(itens.length);
     var resultado = itens [numero];

     
     Navigator.push(
         context,
         MaterialPageRoute(
             builder: (context) => Resultado (resultado)
         )
      );
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color (0xff7CB2A5),
      body: Container (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("imagens/caraoucoroa.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("imagens/jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
