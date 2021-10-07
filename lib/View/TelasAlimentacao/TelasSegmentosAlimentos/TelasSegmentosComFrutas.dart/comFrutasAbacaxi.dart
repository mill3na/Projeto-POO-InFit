import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaComFrutasAbacaxi extends StatelessWidget {

  bool chaveAlimentos;

  TelaComFrutasAbacaxi(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: com abacaxi', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Salada \ncom abacaxi', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacaxi/salada-com-abacaxi.jpg', 
                          ' Salada com abacaxi ',
                          '↪ Rúcula;\n↪ Radicchio;\n↪ Tomate italiano;\n↪ Fatias de abacaxi;\n↪ Palitos de queijo;\n↪ Vinagre balsâmico;\n↪ Sal e azeite de oliva a gosto.',
                          '↪ Lave bem as folhas e disponha no prato. Pique o rabanete em tirinhas e o tomate também;\n\n↪ Para grelhar o abacaxi, coloque um fio de azeite numa frigideira e grelhe dos dois lados sem tampar;\n\n↪ Salpique uma pitada de sal e um fio de azeite nas folhas e outros legumes e coloque o um pouco de vinagre balsâmico em cima do tomate.\n\n↪ Sirva com alguns palitos de queijo grelhados.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Sorvete \nde abacaxi',
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacaxi/sorvete-de-abacaxi.jpeg',
                          ' Sorvete de Abacaxi ',
                          '↪ 1/2 abacaxi em pedaços congelado;\n↪ 3 bananas congeladas;\n↪ 3 colheres de mel;\n↪ Opcionais: aveia, ganola, uva passa. ',
                          '↪ Bata as bananas congeladas em um processador. Adicioneo abacaxi e o mel até obter uma mistrura cremosa;\n\n↪ Caso não tenha triturador, bata no liquidificador a banana e adicione o abacaxi aos poucos, até obter uma consistência cremosa. Misture com o mel;\n\n↪ Despeje em um recipiente e, ao servir, adicione aveia, granola, uva passa e demais acompanhamentos que preferir.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Peixe \ncom abacaxi',
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacaxi/peixe_com_abacaxi.jpg',
                          ' Peixe com abacaxi ',
                          '↪ 1/2 kg de salmão cortado em filés;\n↪ 1/2 colher (chá) de sal;\n↪ 3 colheres (sopa) de azeite de oliva;\n↪ 2 dentes de alho picados;\n↪ 150g de cogumelos fatiados; \n↪ 6 fatias finas de abacaxi; \n↪ 2 colheres de mel; \n↪ 1/2 xícra (chá) de maionese light sabor cebolas tostadas e orégano;\n↪ 1 colher (chá) de cheiro-verde picado.',
                          '↪ Tempere os filés de salmão com o sal e reserve. Em uma frigideira grande ou grelha aqueça 2 colheres de sopa do azeite de oliva e frite os filés até dourar dos dois lados. Retire do fogo e coloque em uma travessa, mantendo aquecidos;\n\n↪ Na mesma frigideira aqueça o restante do azeite e refogue o alho e os cogumelos por 2 minutos;\n\n↪ Junte o abacaxi e refogue por mais 2 minutos. Acrescente o mel e a maionese sabor cebolas tostadas e orégano e cozinhe por mais 2 minutos ou até obter um molho cremoso; \n\n↪ Despeje sobre os filés de peixe reservados, polvilhe o cheiro-verde e sirva em seguida.', 
                          chaveAlimentos
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Espetinho \ncom abacaxi', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacaxi/espetinho_abacaxi.jpg',
                          ' Espetinho de abacaxi ',
                          '↪ 1 kg de patinho em cubos médios;\n↪ 1 abacaxi em cubos médios;\n↪ Cebola Roxa;\n↪ Sal e pimenta do reino a gosto;\n↪ Açúcar;\n↪ Azeite;\n↪ Gergelim; ;\n↪ Cebolinha;\n↪ 1/4 de xícara de vinagre.',
                          '↪ Em um recipiente pequeno, misture o vinagre e a água. Junte o açúcar e uma pitada de sal. Misture bem.;\n\n↪ Coloque as cebolas neste liquido, tampe com papel filme. Faça alguns furos no filme e leve ao micro ondas por 2 minutos. Retire o plástico e reserve;\n\n↪ Tempere o lombo com sal, pimenta e demais temperos de sua preferência. Reserve.\n\n↪ Em uma frigideira coloque duas colheres de sopa de azeite e uma pitada de açúcar. Espere aquecer;\n\n↪ Coloque os cubos de lombo e deixe dourar de todos os lados. Reserve;\n\n↪ Na mesma frigideira, coloque os cubos de abacaxi e deixe dourar de todos os lados. Reserve;\n\n↪ Em espetinhos pequenos coloque um cubo de carne, uma pétala de cebola e um cubo de abacaxi;\n\n↪ Polvilhe cebolinha e gergelim na hora de servir.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Mousse \nde abacaxi',
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacaxi/mousse-de-abacaxi.jpg', 
                          ' Mousse de Abacaxi ',
                          '↪ 1/2 abacaxi sem casca ;\n↪ 1 litro de leite de amêndoas;\n↪ 5 gotas de essência de baunilha;\n↪ 1 envelope de gelatina sem sabor;\n↪ 240ml de água morna.',
                          '↪ Primeiro, deixe ferver por 15 minutos a água com os pedaços de abacaxi;\n\n↪ Na sequência, adicione a gelatina e leve a mistura para o liquidificador para bater com os outros ingredientes;\n\n↪ Feito isso, você pode colocar o conteúdo em taças e levar à geladeira até o mousse atingir a consistência e a temperatura desejada. Depois, é só servir!',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Bolo \nde abacaxi', 
                          context, 
                          'assets/imagens/comFrutas/comFrutasAbacaxi/bolo_de_abacaxi.jpg',
                          ' Bolo de abacaxi ',
                          '↪ 2 rodelas de abacaxi descascado;\n↪ ½ xícara (chá) de água;\n↪ 2 colheres (sopa) de pasta de amendoim com chocolate branco light;\n↪ 1 xícara (chá) de óleo de amêndoas;\n↪ 2 xícaras (chá) de farinha de trigo integral; \n↪ 1 xícara (chá) de aveia em flocos; \n↪ 1 colher (sopa) de linhaça; \n↪ 3 ovos;\n↪ 1 colher (sopa) de fermento;\n↪ Canela a gosto.',
                          '↪ Primeiro, faça um suco de abacaxi (com uma rodela da fruta com a água). Na sequência, bata do liquidificador a bebida junto com o óleo, a pasta de amendoim e os ovos;\n\n↪ Então, em um recipiente diferente, coloque o restante dos ingredientes secos (com exceção da outra rodela de abacaxi) e misture;\n\n↪ Junte o abacaxi e refogue por mais 2 minutos. Feito isso, vá despejando aos poucos o conteúdo líquido nessa mistura até que ela fique bem úmida;\n\n↪ Para finalizar, pique a segunda rodela de abacaxi e adicione à massa do bolo.Agora, é só colocar para assar.\n\n↪ Unte uma forma com manteiga e transfira o bolo para a nova vasilha.Leve ao forno a uma temperatura média de 200°C por cerca de 45 minutos e pronto!', 
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
