import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/TelaAtividadeFisicaGenerica.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class ListasGenericasExercicios extends StatelessWidget {

  String tituloTemaExercicio;
  String texto1, texto2, texto3, texto4, texto5, texto6;
  String imagem1, imagem2, imagem3, imagem4, imagem5, imagem6;

  ListasGenericasExercicios(
    this.tituloTemaExercicio, 
    this.texto1, this.texto2, this.texto3, this.texto4, this.texto5, this.texto6,
    this.imagem1, this.imagem2, this.imagem3, this.imagem4, this.imagem5, this.imagem6,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundoExercicio),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
          child: SafeArea(
            child: Column(
              children: [
                pularLinha(20),
                caixaDeTexto('Lista de exercícios Peito', corExercicio, tamanhoLetraTitulos, TextAlign.center, fonte),
                pularLinha(80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        botaoExercicio(context, 'Exercicio 1', TelaAtividadeFisicaGenerica(texto1, imagem1)),
                        botaoExercicio(context, 'Exercicio 2', TelaAtividadeFisicaGenerica(texto2, imagem2)),  
                        botaoExercicio(context, 'Exercicio 3', TelaAtividadeFisicaGenerica(texto3, imagem3)),  
                        botaoExercicio(context, 'Exercicio 4', TelaAtividadeFisicaGenerica(texto4, imagem4)),  
                        botaoExercicio(context, 'Exercicio 5', TelaAtividadeFisicaGenerica(texto5, imagem5)),  
                        botaoExercicio(context, 'Exercicio 6', TelaAtividadeFisicaGenerica(texto6, imagem6)),          
                      ],
                    ),
                  ],
                ),
                pularLinha(20),
                botaoSemBordaSair('Retornar', corExercicio, context, fonte),
              ] 
            ),
          ),
        ),
      ),
    );
  }
}
