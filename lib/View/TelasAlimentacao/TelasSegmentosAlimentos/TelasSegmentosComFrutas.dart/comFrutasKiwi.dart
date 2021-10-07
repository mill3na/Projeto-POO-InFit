import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaComFrutasKiwi extends StatelessWidget {

  bool chaveAlimentos;

  TelaComFrutasKiwi(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: com kiwi', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Limonada \nde kiwi',
                          context,
                          'assets/imagens/comFrutas/comFrutasKiwi/limonada-de-kiwi.jpeg', 
                          'Limonada de kiwi',
                          '↪ 1 xícara (chá) de água;\n↪ 1/2 xícara (chá) de suco de limão;\n↪ 1 kiwi picado;\n↪ 3 cubos de gelo;\n↪ Adoçante a gosto.',
                          '↪ Em um liquidificador adicione a água, suco de limão, kiwi picado e o gelo;\n\n↪ Bata bem até o gelo ficar bem triturado;\n\n↪ Adoce como desejar e sirva logo em seguida. ', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Panqueca \ncom kiwi',
                          context,
                          'assets/imagens/comFrutas/comFrutasKiwi/panqueca-com-kiwi.jpg', 
                          'Panqueca com kiwi',
                          '↪ 2 ovos;\n↪ 3 colheres de sopa de farinha de trigo;\n↪ 200 ml de leite integral;\n↪ 1 kiwi maduro;\n↪ 1/2 manga média madura;\n↪ 150ml de água; \n↪ 3 colheres de açúcar; \n↪ Mel.',
                          '↪ Em um liquidificador, bata os ovos, a farinha e o leite até obter uma massa homogênea;\n\n↪ Pique as frutas e coloque numa panela com a água e o açúcar. Mexa de vez em quando. A calda estará pronta quando a calda engrossar e as frutas ficarem bem molinhas;\n\n↪ Disponha as panquecas uma sobre a outra.Por cima coloque a calda e regue com mel à gosto.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Geleia \nde kiwi',
                          context,
                          'assets/imagens/comFrutas/comFrutasKiwi/geleia-de-kiwi.jpg',
                          'Geleia de kiwi',
                          '↪ 5 kiwis;\n↪ 1/2 xícara de açúcar;\n↪ 1 maçã sem casca e sem sementes ralada.',
                          '↪ Triture ou corte o kiwi e a maçã em pedaços bem pequenos;\n\n↪ Em uma palena, junte as frutas e o açúcar, e mexa em fogo baixo até que fiquem molinhas e tenham reduzido até a consistência de geleia;\n\n↪ Disponha a mistura em um potinho com tampa.',
                          chaveAlimentos
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Suco \nrefrescante',
                          context,
                          'assets/imagens/comFrutas/comFrutasKiwi/suco-kiwi.jpeg', 
                          'Suco refrescante',
                          '↪ 4 kiwi picados;\n↪ 1 porção de hortelã, lavado e picado;\n↪ Água gelada; \n↪ Açúcar a gosto.',
                          '↪ Coloque no liquidificador o kiwi e hortelã, a água e o açúcar. Se preferir, coloque gelo também;\n\n↪ Coe e sirva.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Picolé \nde kiwi',
                          context,
                          'assets/imagens/comFrutas/comFrutasKiwi/picole-de-kiwi.jpg', 
                          'Picolé de kiwi',
                          '↪ 3 kiwis descascados;\n↪ 1 copo de 200ml de suco de limão;\n↪ 2 colheres de sopa de mel ou açúcar; \n↪ Açúcar a gosto.',
                          '↪ Bata todos os ingredientes no liquidificador. Coloque alguns pedaços em rodelas para enfeitar;\n\n↪ Depois despeje nas forminhas de picolé e leve ao freezer até estar no ponto de picolé.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Caipirinha \nde kiwi',
                          context,
                          'assets/imagens/comFrutas/comFrutasKiwi/caipirinha-de-kiwi.jpg', 
                          'Caipirinha de kiwi',
                          '↪ 2 kiwis descascados;\n↪ 60 ml de saquê;\n↪ Açúcar a gosto; \n↪ Açúcar e cubos de gelo a gosto.',
                          '↪ Coloque o kiwi e o açúcar em um copo e amasse com o pilão. Acrescente o saquê;\n\n↪ Acrescente cubos de gelo e mexa.',
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
