import 'dart:math';
import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _jogar(){

    var itens = ["cara", "coroa"];
    var numeroAleatorio = Random().nextInt(itens.length);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>Resultado(itens[numeroAleatorio])
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _jogar,
              child: Image.asset('images/botao_jogar.png')
            )
          ], 
        )
      )
    );
  }
}