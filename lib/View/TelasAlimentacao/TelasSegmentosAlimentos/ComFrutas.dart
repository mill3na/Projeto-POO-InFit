import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasAbacate.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasAbacaxi.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasBanana.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasKiwi.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasMelancia.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasMorango.dart';

// ignore: must_be_immutable
class TelaComFrutas extends StatelessWidget {

  bool chaveAlimentos;

  TelaComFrutas(this.chaveAlimentos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundoAlimentacao),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pularLinha(40),
                caixaDeTexto('Alimentação: com frutas', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/comFrutas/banana.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaComFrutasBanana(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Banana', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/comFrutas/abacate.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaComFrutasAbacate(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Abacate', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                  ],
                ), pularLinha(20),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/comFrutas/melancia.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaComFrutasMelancia(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Melancia', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/comFrutas/abacaxi.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaComFrutasAbacaxi(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Abacaxi', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                  ],
                ), pularLinha(20),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/comFrutas/kiwi.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaComFrutasKiwi(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Kiwi', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/comFrutas/morango.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaComFrutasMorango(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Morango', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                  ],
                ), pularLinha(20),
                botaoSemBordaSair('Retornar', corDoTexto, context, fonteReceitas),
              ],
            ),
          ),
        ),
      ),
    );
  }
}