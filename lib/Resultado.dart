import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  @override

  String valor;
  Resultado(this.valor);

  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var _resultadoJogo = widget.valor;
    var _caminhoImagem;
    if(_resultadoJogo == "cara"){
      _caminhoImagem = "images/moeda_cara.png";
    } else{
      _caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(_caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset('images/botao_voltar.png')
            )
          ], 
        )
      )
    );
  }
}