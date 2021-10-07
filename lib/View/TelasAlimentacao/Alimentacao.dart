import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';
import 'TelasSegmentosAlimentos/bebidas.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/ComFrutas.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/doces.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/lowCarb.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/salgadas.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/TelasSegmentosAlimentos/veganas.dart';
import 'MenuAlimentos.dart';

// ignore: must_be_immutable
class Alimentacao extends StatelessWidget {

  bool chaveAlimentos;

  Alimentacao(this.chaveAlimentos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundoAlimentacao),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      alignment:  Alignment.topLeft,
                      color: Color(corFundoAlimentacao),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(corSecundaria),
                        child: GestureDetector(
                            child: Icon(
                              Icons.reorder,
                              color: Color(corSuporteFundo),
                            ),
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MenuAlimentos(chaveAlimentos))),
                      ),
                    ),
                    ),
                    pularLado(50),
                    caixaDeTexto('Alimentação', corSuporteTexto, tamanhoLetraTitulos, TextAlign.center, fonteReceitas),
                  ],
                ), pularLinha(20),
                caixaDeTexto('O que você quer cozinhar hoje?', corSuporteTexto, tamanhoLetraSubtitulos, TextAlign.center, fonteReceitas),
                pularLinha(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                backgroundImage: AssetImage('assets/imagens/alimentacao/fruit_foods_2.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaComFrutas(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Com frutas', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
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
                                backgroundImage: AssetImage('assets/imagens/alimentacao/salty_food_2.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaSalgadas(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Salgadas', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                  ],
                ), pularLinha(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                backgroundImage: AssetImage('assets/imagens/alimentacao/food_smoothie_2.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaBebidas(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Bebidas', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
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
                                backgroundImage: AssetImage('assets/imagens/alimentacao/vegan_food.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaVeganas(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Veganas', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                      ],
                    ),
                  ],
                ), pularLinha(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                backgroundImage: AssetImage('assets/imagens/alimentacao/vegan_food_2.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaLowCarb(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Low Carb', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
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
                                backgroundImage: AssetImage('assets/imagens/alimentacao/sweet_food.jpg'),
                              ),
                            ),
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TelaDoces(chaveAlimentos),)),// OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Doces', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
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
