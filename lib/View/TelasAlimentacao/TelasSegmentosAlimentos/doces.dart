import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaDoces extends StatelessWidget {

  bool chaveAlimentos;

  TelaDoces(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: doces', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Docinho \nde coco', 
                          context, 
                          'assets/imagens/doces/beijinho-coco.jpeg', 
                          'Docinho de coco', 
                          '↪ 200 g creme de leite;\n↪ 100 g coco ralado seco; \n↪ 200 ml leite de coco;\n↪ A gosto: adoçante, coco ralado e cravo da índia.', 
                          '↪ Colocar o creme de leite, coco ralado e leite de coco na panela e mexa até dar uma encorpada;\n\n↪ Misture o adoçante à gosto e leve à geladeira;\n\n↪ Enrole as bolinhas e passe no coco ralado, colocando os cravinhos em cima. Ou coma de colher;\n\n↪ Mantenha guardado na geladeira.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Pão de mel', 
                          context, 
                          'assets/imagens/doces/pao-de-mel.jpg', 
                          'Pão de mel', 
                          '↪ 2 1/2 xícaras (chá) farinha de trigo integral;\n↪ 1 xícara (chá) mel;\n↪ 3 colheres (chá) cacau em pó;\n↪ 2 xícaras (chá) água ou água de coco;\n↪ 1 colher (chá) canela;\n↪ 1/2 colher (café) gengibre em pó (opcional);\n↪ 1/2 colher (café) noz moscada (opcional);\n↪ 1/2 colher (café) cravo da índia em pó (opcional);\n↪ 1 colher (café) essência de baunilha (opcional);\n↪ 1 colher (chá) bicarbonato;\n↪ 1 colher (chá) fermento;\n↪ 130g chocolate meio amargo light.',
                          '↪ Bata todos os ingredientes com a batedeira ou a mão, com exceção do chocolate;\n\n↪ Unte uma travessa e polvilhe farinha de trigo;\n\n↪ Coloque a massa e leve ao forno (190° C) por aproximadamente 25 minutos;\n\n↪ Pique o chocolate e coloque no microondas por 2 minutos, mexendo de vez em quando;\n\n↪ Desenforme o bolo e cubra com o chocolate derretido;\n\n↪ Leve à geladeira para endurecer o chocolate por cerca de 20 minutos;\n\n↪ Corte em quadradinhos.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Pudim \nde chia', 
                          context, 
                          'assets/imagens/doces/pudim-de-chia.jpg', 
                          'Pudim de chia',
                          '↪ 150ml de purê de framboesa;\n↪ 150ml de água;\n↪ 7g de gelatina em pó sem sabor;\n↪ 400ml de leite de coco;\n↪ 6 colheres de chia;\n↪ 3 colheres de sopa de agave.',
                          '↪ Gelatina: 1. Em um processador pequeno, processe as framboesas até que vire um purê;\n\n↪ 2. Esquente a água e jogue por cima da gelatina;\n\n↪ 3. Misture até que a gelatina se dissolva;\n\n↪ 4. Misture a gelatina no purê de framboesa, e monte no fundo de um potinho;\n\n↪ 5. Leve para a geladeira e espere endurecer (aproximadamente 2 horas);\n\n↪ Pudim: 1. Em um recipiente com tampa, misture o leite de coco, a chia e o agave;\n\n↪ 2. Feche o recipiente e chacoalhe bem;\n\n↪ 3. Retire da geladeira o potinho com a gelatina de framboesa e complete com o pudim de chia;\n\n↪ 4. Retorne para a geladeira por 4 horas;\n\n↪ Retire da geladeira e sirva.',
                          chaveAlimentos,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Tâmara \ne coco', 
                          context, 
                          'assets/imagens/doces/docinho-tamara-e-coco.jpg', 
                          'Tâmara e coco', 
                          '↪ 1/2 xícara de tâmaras sem caroço;\n↪ 1/2 xícara de coco seco ralado sem açúcar; \n↪ 80 gramas de chocolate meio amargo 50 ou 70% cacau;\n↪ Coco ralado para cobrir os docinhos.', 
                          '↪ Coloque as tâmaras e uma tigela, cubra com água fervente, tampe e deixe descansar por 15 minutos;\n\n↪ Retire as tâmaras da água com a ajuda de um garfo (não jogue a água fora) e coloque-as no processador com o coco ralado;\n\n↪ Processe os dois ingredientes com algumas colheradas da água do molho, se preferir pode colocar leite de coco, adicione conforme a necessidade;\n\n↪ A massa deve ficar levemente grudenta, mas de forma que você consiga moldar bolinha;\n\n↪ Deixe na geladeira por 30 minutos antes de enrolar;\n\n↪ Faça bolinhas, se precisar unte as mãos com água para facilitar, depois reserve na geladeira por 20 minutos;\n\n↪ Derreta o chocolate em banho-maria ou microondas, não precisa temperar;\n\n↪ Passe os docinhos no chocolate com a ajuda de um garfo, não precisa ficar perfeito e lisinho como um bombom, é só para fazer uma casquinha fina de chocolate; \n\n↪ Depois passe no coco ralado e boleie delicadamente com a mãos, para dar acabamento e ficarem mais redondas;\n\n↪ Se preferir, coloque em forminhas de brigadeiro e mantenha os docinhos na geladeira.', 
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Brownie Fit', 
                          context, 
                          'assets/imagens/doces/brownie-batata-doce.jpg', 
                          'Brownie Fit', 
                          '↪ 4 unidades de batata doce;\n↪ 1/2 xícara de farinha de amêndoas;\n↪ 1/2 xícara de óleo de coco;\n↪ 1/2 xícara de cacau em pó 100%;\n↪ 1 ovo;\n↪ 1/2 xícara de mel;\n↪ 1 colher de sopa de extrato de baunilha;\n↪ 1 pitada de sal;\n↪ 1/2 xícara de noz pecan;\n↪ 1 colher de chá de bicarbonato de sódio.',
                          '↪ Embrulhe as batatas doces em papel alumínio e asse-as em forno preaquecido a 160˚C por aproximadamente 1h ou até que estejam tenras;\n\n↪ Retire a polpa das batatas e preencha 1 e 1/2 xícara de chá;\n\n↪ No processador, junte essa medida de batata doce com a farinha de amêndoas, o óleo de coco, o cacau em pó, o ovo, o mel, o extrato de baunilha e a pitada de sal. Processe até obter uma mistura homogênea;\n\n↪ Acrescente o bicarbonato de sódio, processe novamente e então adicione as nozes picadas;\n\n↪ Processe até que tudo se misture e, em seguida, despeje a massa em uma forma de 30 x 10 cm forrada com papel manteiga;\n\n↪ Asse em forno preaquecido a 170˚C por aproximadamente 40 minutos.',
                          chaveAlimentos,
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Pudim \nde leite', 
                          context, 
                          'assets/imagens/doces/pudim-de-leite.jpg', 
                          'Pudim de leite', 
                          '↪ 6 ovos;\n↪ 2 xícaras (chá) leite em pó desnatado;\n↪ 2 xícaras (chá) leite desnatado;\n↪ 1 xícara (chá) iogurte natural desnatado;\n↪ 3 colheres (sopa) adoçante culinário;\n↪ 3 colheres (sopa) açúcar demerara;\n↪ 1 colher (sopa) água.',
                          '↪ Bater os ovos, o leite em pó e o leite normal, o iogurte e o adoçante. Reserve;\n\n↪ Coloque o açúcar e a água na forma e coloque sobre o fogo médio até formar uma calda de caramelo;\n\n↪ Despeje delicadamente o líquido do pudim sobre a calda;\n\n↪ Leve ao forno em banho maria por 40 minutos.', 
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
