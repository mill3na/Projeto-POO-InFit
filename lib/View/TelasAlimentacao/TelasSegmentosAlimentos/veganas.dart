import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaVeganas extends StatelessWidget {

  bool chaveAlimentos;

  TelaVeganas(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: veganas', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Bolo de \nchocolate', 
                          context, 
                          'assets/imagens/veganas/bolo-chocolate-vegano.jpg', 
                          'Bolo de chocolate',
                          '↪ 200 g de tâmaras secas sem caroços;\n↪ 2 xícaras de farinha de trigo; \n↪ 3 colheres de sopa de cacau cru;\n↪ 1 colher de sopa de fermento em pó;\n↪ 1 colher de chá de bicarbonato de sódio;\n↪ 1 ½ xícaras de leite vegetal;\n↪ 4 colheres de sopa de óleo de coco;\n↪ 1 colher de chá de suco de limão;\n↪ Cobertura: 1 colher de sopa de amido de milho; 7 colheres de chá de cacau; 1 xícara de leite de amêndoas.',
                          '↪ Massa: triturar as tâmaras em processador, em seguida, misturar todos os ingredientes com um fuê. Assar em forno pré aquecido a 180 °C por 30 minutos. \n\n↪ Cobertura: Dissolver amido de milho no leite vegetal frio, mexendo com fuê, misturar com o cacau e deixar ferver por 5 minutos. Após mornar, servir em cima do bolo.',
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Cheddar \nvegano', 
                          context, 
                          'assets/imagens/veganas/cheddar-vegano.jpg', 
                          'Cheddar vegano',
                          '↪ 1 xícara de castanha de caju crua;\n↪ 1 colher de sopa cheia de cúrcuma; \n↪ 3 colheres de sopa de cacau cru;\n↪ 3 colheres de sopa de azeite;\n↪ 1 dente de alho;\n↪ 1 colher de sopa de limão;\n↪ 1/2 xícara de água;\n↪ 1 pitada de sal.',
                          '↪ Bater todos os ingredientes no liquidificador e guardar na geladeira até estar em consistência firme. \n\n↪ Caso o liquidificador não consiga bater as castanhas facilmente, deve-se deixá-las de molho em água por cerca de 20 minutos e escorrer bem antes de bater.',
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Espetinho \nvegano', 
                          context, 
                          'assets/imagens/veganas/espetinho-vegano.jpg', 
                          'Espetinho vegano',
                          '↪ Tofu;\n↪ Cogumelos; \n↪ Carne e salsicha de soja;\n↪ Berinjela cortada em cubos;\n↪ Cebola corta ao meio ou inteira com casca;\n↪ Pimentões recheados queijo;\n↪ Cenoura em cubos grandes;\n↪ Couve-flor;\n↪ Abobrinha;\n↪ Brócolis;\n↪ Vagem; \n↪ Espiga de milho;\n↪ Tomate sem semente;\n↪ Frutas como maçã, abacaxi e pêssego.', 
                          '↪ Assar o tofu, os cogumelos e a carne de soja na churrasqueira. Todos os legumes também podem ser assados, especialmente o pimentão recheado com queijo, que irá derreter com o calor; \n\n↪ Além disso, os legumes podem ser consumidos crus na forma de salada, e pode-se usar o pão de alho para acompanhar as carnes veganas; \n\n↪ Monte os espetinhos e sirva.',
                          chaveAlimentos,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Toffe de cenoura \ne maçã', 
                          context, 
                          'assets/imagens/veganas/toffe-cenoura-maca.jpg', 
                          'Bolo toffe vegano', 
                          '↪ 2 maçãs descascadas e raladas;\n↪ 115 g de nozes;\n↪ 80 g de coco ralado seco;\n↪ 1/2 colher de chá de canela;\n↪ 2 colheres de sopa de algarroba;\n↪ 2 colheres de sopa de cacau cru em pó;\n↪ 1 pitada de sal marinho;\n↪ 150 g de uva-passas;\n↪ 60 g de maçã seca (demolhada por 15 minutos e escorrida);\n↪ 60 g de tâmaras sem caroço (demolhadas por 15 minutos e escorrida);\n↪ 1 laranja descascada.', 
                          '↪ Em uma tigela, misturar maçã e cenoura, nozes, coco, algarroba em pó, cacau cru, canela, sal e uvas-passas;\n\n↪ No liquidificador, misturar maçã seca demolhada, tâmaras e laranja, até obter massa úmida;\n\n↪ Espalhar metade do molho de tomate na assadeira;\n\n↪ Em seguida, untar forma redonda de 20 cm, com papel manteiga, pressionar a massa e a mistura na forma e levar a geladeira por 3 horas.', 
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Hambúrguer \nvegano', 
                          context, 
                          'assets/imagens/veganas/hamburguer-vegano.jpg', 
                          'Hambúrguer vegano', 
                          '↪ 1 xícara de cebola branca picada;\n↪ Fio de azeite para untar a frigideira;\n↪ 2 dentes de alho picado ou amassado;\n↪ 1/2 xícara de beterraba ralada;\n↪ 1/2 xícara de cenoura ralada;\n↪ 1 colher de sopa de molho shoyo;\n↪ Pimenta caiena a gosto (opcional);\n↪ Suco de 1/2 limão;\n↪ 2 xícaras de feijão cozido;\n↪ 3/2 de xícara de fubá;\n↪ Sal a gosto.', 
                          '↪ Refogar a cebola e alho em um fio de azeite até murchar. Adicionar a beterraba, cenoura, shoyo, suco de meio limão e uma pitada de pimenta caiena. Refogar por 10 minutos;\n\n↪ Em um processador de alimentos ou liquidificador, adicionar o feijão, o refogado da panela e uma pitada de sal, adicionando o fubá aos poucos;\n\n↪ Retirar o formar os hambúrgueres do tamanho desejado envolvendo cada hambúrguer com um pouco de fubá;\n\n↪ Coloque os hambúrgueres em uma forma untada com azeite e levar ao forno médio para assar por cerca de 10 minutos de cada lado;\n\n↪ Monte os hambúrgueres com a salada e molhos de preferência.',
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Ratatouille \nvegano', 
                          context, 
                          'assets/imagens/veganas/ratatouille-vegano.jpg', 
                          'Ratatouille vegano', 
                          '↪ 2 abobrinhas;\n↪ 6 tomates médios; \n↪ 2 berinjelas;\n↪ Molho de tomate caseiro;\n↪ Temperos a gosto.',
                          '↪ Cortar as abobrinhas, os tomates e as berinjelas em rodelas;\n\n↪ Untar uma forma redonda (assadeira) com azeite de oliva; \n\n↪ Espalhar metade do molho de tomate na assadeira;\n\n↪ Distribuir as rodelas por sobre a assadeira intercalando-as (1 de berinjela, 1 de abobrinha, 1 de tomate), preenchendo toda a assadeira;\n\n↪ Cobrir tudo com a metade restante do molho de tomate;\n\n↪ Salpicar os temperos escolhidos;\n\n↪ Levar ao forno preaquecido em temperatura média (180ºC) por cerca de 30 minutos (sempre olhando para garantir que não queime);\n\n↪ Retirar e servir.',
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
