import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class MenuAlimentos extends StatelessWidget {

  bool chaveAlimentos;

  MenuAlimentos(this.chaveAlimentos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundoAlimentacao),
      body: Container(
        child: SafeArea(
          child: Container(
          padding: EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    caixaDeTexto("Do que você precisa?", corDoTexto, tamanhoLetraTitulos, TextAlign.center, fonteReceitas),
                  ],
                ),
                pularLinha(40),
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
                            backgroundImage: AssetImage('assets/imagens/gerais/fouet.jpg'),
                          ),
                        ),
                        onTap: () {
                          if (chaveAlimentos == true) {
                            Navigator.pop(context);
                          }
                          else {
                            avisoConvidado(context);
                          }
                        }
                      ),
                    ),
                    pularLinha(10),
                    caixaDeTexto('Ver receitas salvas', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                  ],
                ),
                pularLinha(40),
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
                            backgroundImage: AssetImage('assets/imagens/gerais/nutricionistas.jpg'),
                          ),
                        ),
                        onTap: () {
                          if (chaveAlimentos == true) {
                            Navigator.pushNamed(context, 'TelaNutricionistas');
                          }
                          else {
                            avisoConvidado(context);
                          }
                        }
                      ),
                    ),
                    pularLinha(10),
                    caixaDeTexto('Indicação de nutricionistas', corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
                  ],
                ),
                pularLinha(40),
                botaoSemBordaSair('Retornar', corDoTexto, context, fonteReceitas),
              ],
            ),
          ),
        ),
      ),
    );
  }
}