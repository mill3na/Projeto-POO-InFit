import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaLowCarb extends StatelessWidget {

  bool chaveAlimentos;

  TelaLowCarb(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: low carb', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Quiche de \nespinafre', 
                          context, 
                          'assets/imagens/lowCarb/low-carb-quiche.jpeg', 
                          'Quiche de espinafre', 
                          '↪ 1 xícara de chá de farinha de amêndoas; \n↪ 1/4 xícara de chá de azeite de oliva; \n↪ 1 pitada de sal; \n↪ 1 maço de espinafre lavado; \n↪ 4 unidades de ovo; \n↪ 1/4 xícara de chá de creme de leite fresco (ou leite vegetal); \n↪ 1 colher de chá de fermento; \n↪ 1 xícara de chá de queijo parmesão ralado.',
                          '↪ Em um bowl, misture todos os ingredientes da massa (farinha de amêndoa, azeite e sal) até formar uma massa. Forre o fundo e as laterais de uma fôrma média de aro removível;\n\n↪ Leve ao forno preaquecido a 180 °C por 15 minutos. Reserve.\n\n↪ Refogue o espinafre com 1 fio de azeite por 2 minutos. Junte aos ovos, ao creme de leite, ao fermento e ao parmesão, misture bem e coloque sobre a massa. \n\n↪ Leve ao forno por mais 20 minutos ou até assar completamente (ou faça o teste do palito).', 
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Risoto de \ncouve', 
                          context, 
                          'assets/imagens/lowCarb/low-carb-risoto.jpeg', 
                          'Risoto de couve-flor',
                          '↪ 1 couve-flor média cozida até o ponto al dente;\n↪ 2 colheres (sopa) de creme de ricota light;\n↪ 1 colher (sopa) de azeite de oliva extravirgem;\n↪ Sal a gosto.',
                          '↪ Bata a couve-flor no processador até ficar em pedaços do tamanho de grãos de arroz; \n\n↪ Misture todos os ingredientes numa tigela e leve ao forno, panela ou micro-ondas para aquecer. Se quiser, tempere com pimenta, cheiro-verde, azeite ou o que mais preferir. Sirva quente.', 
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Espaguete de \nabobrinha', 
                          context, 
                          'assets/imagens/lowCarb/low-carb-espaguete.jpg', 
                          'Espaguete de abobrinha',
                          '↪ 1 abobrinha grande cortada em formato de espaguete;\n↪ 1 bandeja de espaguete de pupunha;\n↪ Pesto de agrião; \n↪1 colher de sopa de óleo de girassol;\n↪ 1 cebola cortada em tirinhas;\n↪ 1 punhado de brotos de beterraba, brotos de nabo e amêndoas.',
                          '↪ Escalde rapidamente a pupunha. Corte a abobrinha no formato indicado, e a cebola também; \n\n↪ Refogue a abobrinha, a pupunha e a cebola no óleo por 2; \n\n↪ Adicione o pesto a gosto e misture bem; \n\n↪ Disponha o espaguete no prato, adicione azeite, os brotinhos, a beterraba, cenoura, amêndoas. Sirva em seguida.',
                          chaveAlimentos,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Farofa \ncom nozes',
                          context, 
                          'assets/imagens/lowCarb/low-carb-farofa.jpeg',
                          'Farofa com nozes',
                          '↪ 1/2 unidade de cebola;\n↪ 3 dentes de alho picados;\n↪ 1 colher de manteiga ghi;\n↪ 3 unidades de ovo;\n↪ 1 xícara de chá de farinha de amêndoas;\n↪ 1/2 xícara de chá de ceblinha; \n↪ 1/4 xícara de chá de castanha de caju torrada;\n↪ 2 colheres de sopa de linhaça; \n↪1/4 xícara de chá de linhaça dourada;\n↪ 1/4 xícara de chá de sementes de girassol; \n↪1 colher de chá.',
                          '↪ Refogue a cebola e o alho na manteiga até que fiquem dourados. Junte os ovos, mexendo até cozinhar; \n\n↪ Acrescente a farinha de amêndoas e misture por mais um minuto. Desligue o fogo e acrescente o restante dos ingredientes. Misture bem. Sirva em seguida.', 
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Panacota \nfit',
                          context, 
                          'assets/imagens/lowCarb/low-carb-panacota.jpg', 
                          'Panacota com morango',
                          '↪ 200ml de leite de coco;\n↪ 1 colher de cá de ágar-ágar;\n↪ 1/2 xícara de adoçante (xylitol);\n↪ 400ml de iogurte grego; \n↪ 1/2 xícara de chá de morango orgânico; \n↪ Suco de meio limão; \n↪ 1 colher (sobremesa) de canela em pó; \n↪ 1/2 colher (sobremesa) de gengibre em pó; 1/2 colher (sobremesa) de melaço de cana-de-açúcar ou mel; \n↪ Água suficiente para ajudar a bater.', 
                          '↪ Panacota: 1. Em uma panela, coloque o leite de coco, o ágar-ágar e o xylitol, e misture bem. Leve ao fogo, mexendo com um batedor de arame (fouet) sem parar até ferver; \n\n↪ 2. Após ferver, siga mexendo sem parar por mais 3 minutos, desligue o fogo e espere amornar. Incorpore o iogurte (que precisa estar em temperatura ambiente) misturando sempre.\n\n↪ 3. Coloque o creme em potinhos de vidro e leve à geladeira por 30 minutos;\n\n↪ Calda: 1. Bata todos os ingredientes no liquidificador ou processador, até obter uma consistência de calda.\n\n↪ 2. Coloque a mistura por cima da panacota e leva à geladeira por 2 horas. Se quiser, coloque morangos por cima para decorar.',
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Wrap de \ncouve',
                          context, 
                          'assets/imagens/lowCarb/low-carb-wrap-de-couve.jpg',
                          'Wrap de couve',
                          '↪ 1 folha de couve pequena orgânica;\n↪ 1/2 lata de atum ao natural; \n↪ 2 colheres (sopa) de requeijão light (ou queijo quark);\n↪ 1/2 unidade de cenoura ralada;\n↪ Cebola, alho, manjericão e alçafrão-da-terra a gosto.',
                          '↪ Mergulhe a couve rapidamente na água bem quente. Coloque a folha em um prato e reserve; \n\n↪ Para o recheio, escorra bem o líquido do atum e misture o requeijão (ou queijo quark), a cenoura e os temperos;\n\n↪ Coloque a pasta sobre a couve e enrole o wrap.', 
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
