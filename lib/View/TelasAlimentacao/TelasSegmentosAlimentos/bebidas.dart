import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaBebidas extends StatelessWidget {

  bool chaveAlimentos;

  TelaBebidas(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: bebidas', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Manga e \nbanana', 
                          context, 
                          'assets/imagens/bebidas/vitamina-manga-banana.jpg',
                          'Manga e banana',
                          '↪ 2 copos de leite desnatado;\n↪ 1 copo de suco de laranja natural;\n↪ 1 banana e 1 manga picadas;\n↪ 1 colher de semente de girassol; \n↪ 2 colheres de whey protein.',
                          '↪ Bata todos os ingredientes no liquidificador e sirva gelado.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Vitamina \nlaranja', 
                          context, 
                          'assets/imagens/bebidas/vitamina-laranja.jpg', 
                          'Vitamina laranja',
                          '↪ 1 mamão;\n↪ 1 cenoura ralada;\n↪ 2 copos de suco de laranja.',
                          '↪ Bata todos os ingredientes no liquidificador e sirva gelado.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Abacate e \nhortelã', 
                          context, 
                          'assets/imagens/bebidas/abacate-e-hortela.jpeg', 
                          'Abacate e hortelã',
                          '↪ 1 abacate;\n↪ 5 folhas frescas de hortelã;\n↪ 1 copo de leite;\n↪ Açúcar a gosto.',
                          '↪ Bata todos os ingredientes no liquidificador e sirva gelado.', 
                          chaveAlimentos
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Banana \ncom morango',
                          context, 
                          'assets/imagens/bebidas/banana-morango-aveia.jpg',
                          'Banana com morango',
                          '↪ 5 morangos;\n↪ 1 copo de leite;\n↪ 1 banana madura;\n↪ 1 copo de leite;\n↪ Açúcar e aveia a gosto.',
                          '↪ Bata todos os ingredientes no liquidificador e sirva gelado.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Banana e \namendoim', 
                          context, 
                          'assets/imagens/bebidas/banana-amendoim.jpeg', 
                          'Banana e amendoim', 
                          '↪ 200 ml de bebida vegetal de sua preferência (arroz, amêndoa, aveia, soja) ou leite desnatado;\n↪ 1 banana prata congelada;\n↪ 1 colher (chá) de cacau em pó;\n↪ 1 colher (chá) de pasta de amendoim integral;\n↪ 1 colher (sobremesa) de semente de chia.',
                          '↪ Bata todos os ingredientes no liquidificador e sirva gelado.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Vitamina \nroxa', 
                          context, 
                          'assets/imagens/bebidas/acai.jpg',
                          'Vitamina roxa',
                          '↪ 3 colheres de sopa de leite;\n↪ 2 bolas de creme de açaí;\n↪ 2 bolas de sorvete de chocolate light;\n↪ 4 folhas de hortelã;\n↪ 1 xícaras de chá de morangos picados',
                          '↪ Bata no liquidificador o leite, o açaí, o sorvete de chocolate e a hortelã até ficar homogêneo; \n\n↪ Junte depois os morangos e bata na função pulsar do liquidificador até que os morangos estejam misturados à massa; \n\n↪ Decore as laterais de um copo com a calda de chocolate e preencha com a massa obtida. Decore com folhas de hortelã e morangos picados. Sirva em seguida.',
                          chaveAlimentos
                        ),

                      ],
                    ),
                  ],
                ),
                pularLinha(20),
                botaoSemBordaSair('Retornar', corDoTexto, context, fonteReceitas),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
