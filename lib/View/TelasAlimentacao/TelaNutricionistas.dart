import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

class TelaNutricionistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundoAlimentacao),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
          padding: EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(corSecundaria),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: Color(corSuporteFundo),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    pularLado(50),
                    caixaDeTexto('Nutricionistas \nno instagram', corSuporteTexto, tamanhoLetraTitulos, TextAlign.center, fonteReceitas),
                  ],
                ),
                card('@aleluglio'),
                cardComFoto('assets/imagens/nutricionistas/aleluglio.jpeg'),
                card('@fernandascheernutri'),
                cardComFoto('assets/imagens/nutricionistas/fernanda.jpeg'),
                card('@patriciadavidson.nutri'),
                cardComFoto('assets/imagens/nutricionistas/patricia.jpeg'),
                card('@sophiederam.br'),
                cardComFoto('assets/imagens/nutricionistas/sophie.jpeg'),
                card('@nutritahim'),
                cardComFoto('assets/imagens/nutricionistas/nutritahim.jpeg'),
                card('@nutrifergiarola'),
                cardComFoto('assets/imagens/nutricionistas/nutrifer.jpeg'),
                card('@_papodenutri'),
                cardComFoto('assets/imagens/nutricionistas/papodenutri.jpeg'),
                pularLinha(10),
                botaoSemBordaSair('Retornar', corDoTexto, context, fonteReceitas),
              ],
            ),
          ),
        ),
      ),
    );
  }
}