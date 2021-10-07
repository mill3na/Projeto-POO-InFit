import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaComFrutasMorango extends StatelessWidget {

  bool chaveAlimentos;

  TelaComFrutasMorango(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: com morango', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Smoothie',
                          context,
                          'assets/imagens/comFrutas/comFrutasMorango/smoothie-de-morango.jpeg', 
                          'Smoothie de morango',
                          '↪ 1 banana prata cortada em fatias congelada;\n↪ 10 a 15 morangos congelados;\n↪ 1 colher de aveia; \n↪ 1 iogurte zero lactose 100g.',
                          '↪ Bata no liquidificador ou processador  o iogurte e a banana;\n\n↪ Acrescente os morangos e a aveia e bata por mais alguns minutos;\n\n↪ Sirva.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Creme \nde morango',
                          context,
                          'assets/imagens/comFrutas/comFrutasMorango/creme-de-aveia-e-morango.jpg',
                          'Creme de morango',
                          '↪ 1/2 xícara de aveia em flocos;\n↪ 2 xícaras de morango;\n↪ 1/2 xícara de leite da sua preferência.',
                          '↪ Bata todos os ingredientes no liquidificador;\n\n↪ Leve ao freezer por no mínimo duas horas;\n\n↪ Sirva.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Panqueca \ncom morango',
                          context,
                          'assets/imagens/comFrutas/comFrutasMorango/panqueca-com-morango.jpg',  
                          'Panqueca e morango',
                          '↪ 1 xícara de farinha de trigo integral;\n↪ 1 xícara de leite;\n↪ 1 ovo;\n↪ 1  colher de sopa de açúcar mascavo (opcional);\n↪ Morangos frescos; \n↪ Mel.',
                          '↪ Misture em uma tigela a farinha, o leite, o ovo, o óleo e, se quiser, o açúcar. O ideal é obter uma massa sem grumos e meio líquida;\n\n↪ Frite uma porção da panqueca numa frigideira antiaderente Vire a panqueca ao contrário quando estiver borbulhando, e deixe dourar do outro lado.\n\n↪ Retire a panqueca quando estiver dourada dos dois lados, e repita com a massa restante;\n\n↪ Quando as panquecas estiverem prontas, resta servir com morangos frescos lavados e inteiros ou cortados em pedaços, e mel. ', 
                          chaveAlimentos
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Salada',
                          context,
                          'assets/imagens/comFrutas/comFrutasMorango/salada-com-morango.jpg',  
                          'Salada com morango',
                          '↪ 1 maço de rúcula;\n↪ 100g de nozes moídas;\n↪ 1 caixa de morangos;\n↪ 2 colheres de sopa de mostarda;\n↪ 1 colher de sopa de vinagre;\n↪ 1/2 xícara de chá de azeite; \n↪ 1 xícara de iogurte natural sem açúcar;\n↪ 1 pitada de açúcar;\n↪ Suco de 1 limão; \n↪ 1/2 colher de chá de sal; \n↪ Pimenta do reino a gosto.',
                          '↪ Lave bem as folhas de rúcula separadas do talo;\n\n↪ Corte ao meio os morangos lavados;\n\n↪ Misture o iogurte, o vinagre, a mostarda, o suco do limão, o açúcar, o sal e a pimenta em uma saladeira;\n\n↪ Acrescente os morangos, a rúcula e as nozes. ', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Geleia \nde morango',
                          context,
                          'assets/imagens/comFrutas/comFrutasMorango/geleia-de-morango.jpg',
                          'Geleia de morango',
                          '↪ Suco de meio limão;\n↪ 1 xícara de chá de água;\n↪ Adoçante a gosto;\n↪ 1 caixa de morangos maduros picados.',
                          '↪ Dentro de uma panela, coloque os morango e a água;\n\n↪ Quando ferver, misture até engrossar;\n\n↪ Quando reduzir e estiver em consistência de geléia, transfira para uma vasilha com tampa. ', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Docinho \nde morango ',
                          context,
                          'assets/imagens/comFrutas/comFrutasMorango/beijinho-de-morango.jpg', 
                          'Beijinho de morango',
                          '↪ 7 colheres (sopa) de coco;\n↪ 5 colheres (sopa) de leite em pó desnatado;\n↪ 2 colheres (sopa) de adoçante;\n↪ Morangos cortados.',
                          '↪ Misture todos os ingredientes (exceto o morango) até virar uma massa. Depois leve a massa para a geladeira por 30 minutos;\n\n↪ Retire da geladeira, pegue os morangos já cortados, coloque um pouco de massa na mão, coloque o morango e enrole;\n\n↪ Passe no coco ralado. Agora é só servir. ', 
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
