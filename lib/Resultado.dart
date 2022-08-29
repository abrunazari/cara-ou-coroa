

import 'package:flutter/material.dart';


class Resultado extends StatefulWidget {


  String valor;

  Resultado (this.valor);


  //const Resultado({Key? key}) : super(key: key);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "imagens/cara.png";
    if (widget.valor == "cara"){
      caminhoImagem = "imagens/cara.png";
    }else {
      caminhoImagem = "imagens/coroa.png";
    }

    return Scaffold(
      backgroundColor: Color (0xff7CB2A5),
      body: Container (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                 },
                child: Image.asset("imagens/voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}

