import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaComFrutasAbacate extends StatelessWidget {

  bool chaveAlimentos;

  TelaComFrutasAbacate(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: com abacate', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Guacamole \nFit',
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacate/guacamole-fit.jpg',
                          ' Guacamole Fit ',
                          '↪ 1 abacate médio maduro;\n↪ 2 tomates picados sem pele e sem sementes;\n↪ 1 cebola média picada;\n↪ 1 dente de alho amassado;\n↪ 2 colheres de sopa de azeite;\n↪ Pimenta do reino a gosto;\n↪ Suco de 1 limão;\n↪ Sal a gosto;\n↪ Cheiro-verde fresco a gosto.',
                          '↪ Corte o abacate ao meio, retire o caroço e remova a polpa. Corte em pedaços, amasse com a ponta de um garfo e leve para gelar;\n\n↪ Enquanto isso, coloque o tomate picado, a cebola e o alho para refogar em fogo baixo com um pouco de azeite. Adicione pimenta e uma colher de sopa de água. Tampe e deixe cozinhar por 2 minutos;\n\n↪  Espere esfriar, junte o abacate e misture até formar uma pasta. Tempere com sal, limão e cheiro verde;\n\n↪ Leve para gelar e sirva com tortilhas de milho.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Salada \nde abacate', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacate/salada-com-abacate.jpg', 
                          'Salada com abacate',
                          '↪ 1 abacate médio maduro e cortado em cubos;\n↪ 500 gramas de tomate cereja cortados ao meio;\n↪ 1 pepino cortado em cubos;\n↪ 1 cebola roxa média cortada em cubos;\n↪ 1/2 manga cortada em fatias;\n↪ 1 colher se sopa de gergelim.',
                          '↪ Higienize os ingredientes e corte-os como orientado;\n\n↪ Depois basta separar uma saladeira e misturar todos os ingredientes;\n\n↪  Tempere como preferir com um pouco de sal, azeite e limão. Leve para gelar até a hora de servir.', 
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Mousse \nde abacate', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacate/mousse-de-abacate.jpeg',
                          'Mousse de abacate',
                          '↪ 1/2 abacate maduro;\n↪ 2 bananas maduras picadas;\n↪ 3 colheres de sopa de adoçante culinário;\n↪ 1 colher de chá de essência de baunilha.',
                          '↪ Coloque todos os ingredientes no liquidificador ou processador;\n\n↪ Bata até obter a consistência de um creme;\n\n↪  Despeje a mistura do creme em taças individuais e leve para gelar por uma hora. Agora é só servir!',
                          chaveAlimentos,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Abacate \nrechado', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacate/abacate-recheado.jpg',  
                          'Abacate recheado',
                          '↪ 4 abacates;\n↪ 100g de salmão defumado;\n↪ 8 ovos;\n↪ Sal, pimenta, primenta vermelha e endro fresco a gosto.',
                          '↪ Acenda o forno a 200º C. Corte os abacates ao meio e retire o caroço com cuidado para não desperdiçar a polpa do abacate. Coloque as metades dos abacates por cima de um papel vegetal numa assadeira;\n\n↪ Disponha as tiras do salmão defumado. Abra cada ovo em uma taça e com a ajuda de uma colher, coloque a gema e o máximo de clara que conseguir dentro de cada metade de abacate com cuidado para não estourar. Tempere cada gema de ovo com sal e pimenta preta;\n\n↪  Leve a assadeira com cuidado ao forno e deixe assar por 20 minutos;\n\n↪ Na hora de servir coloque pimenta vermelha e o endro fresco por cima de cada abacate e sirva quente.',
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Brigadeiro \nde abacate', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacate/brigadeiro-de-abacate.jpg', 
                          'Brigadeiro de abacate',
                          '↪ 1 xícara de abacate picado;\n↪ 2 colheres de sopa cheias de cacau em pó;\n↪ Mel a gosto.',
                          '↪ Bata o abacate com o cacau no liquidificador ou mixer;\n\n↪ Coloque o mel para adoçar um pouco e bata até obter uma consistência de ganache;\n\n↪  Despeje em potinhos individuais e leve para gelar até adquirir um ponto mais firme, de ganache. Sirva.', 
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Sorvete \nde abacate', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacate/sorvete-de-abacate.png', 
                          'Sorvete de abacate',
                          '↪ 2 bananas maduras;\n↪ 1/2 abacate maduro;\n↪ 2 colheres de cacau;\n↪ 1 scoop de whey sabor chocolate;\n↪ Adoçante culinário a gosto.',
                          '↪ Leve a metade do abacate e as duas bananas picadas ao congelador até congelar;\n\n↪ Bata a banana e abacate congelado no liquidificador com o restante dos ingredientes (e água, caso necessário) até obter uma consistência cremosa;\n\n↪  Despeje em potinhos individuais e sirva.',
                          chaveAlimentos,
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