import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaSalgadas extends StatelessWidget {

  bool chaveAlimentos;

  TelaSalgadas(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: salgadas', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Pão de queijo \nde frigideira', 
                          context, 
                          'assets/imagens/salgadas/receita-pao-de-queijo-frigideira.jpg', 
                          'Pão de queijo', 
                          '↪ 1 ovo\n↪ 3 colheres de tapioca hidratada;\n↪ Queijo à gosto;\n↪ Opcional: queijo cotage e farinha de amêndoas.',
                          '↪ Em um liquidificador, bata todos os ingredientes;\n\n↪ Despeje a mistura em uma frigideira anti-aderente e doure o pão de queijo dos dois lados;\n\n↪ Agora, é só servir!',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Pizza \nde frigideira', 
                          context, 
                          'assets/imagens/salgadas/pizzaFrigideira.jpg', 
                          'Pizza de frigideira',
                          '↪ 1 ovo;\n↪ 1 xícara de farinha/farelo de aveia;\n↪ 1/2 colher de chá de sal\n↪ 1/2 colher de chá de fermento;\n↪ Azeite; \n↪ Recheio: queijo, frango, tomate em rodelas, molho de tomate, carne do sol desfiada, azeitona e o que mais você preferir.',
                          '↪ Em um recipiente, misture todos os ingredientes até obter uma mistura homogênea;\n\n↪ Aqueça a frigideira, unte com azeite ou manteiga;\n\n↪ Com o fogo baixo, despeje a massa e a espalhe com auxílio de um garfo. Tampe.\n\n↪ Quando o lado de baixo estiver dourado, vire a massa;\n\n↪ Adicione molho de tomate, queijo, orégano, tomate em rodelas, frango, azeitona e outros recheios de sua preferência.\n\n↪ Adicione um pouco de água na panela para que não queime enquanto o queijo derrete. Agora, é só servir!',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Salada \nproteica', 
                          context, 
                          'assets/imagens/salgadas/salada.jpeg', 
                          'Salada proteica',
                          '↪ 1/2 repolho;\n↪ 1 chuchu;\n↪ 2 tomates\n↪ 1/2 pimentão;\n↪ 1/2 cebola;\n↪ 1 cenoura pequena ralada; \n↪ 2 ovos cozidos;\n↪ 1 pote de iorgurte natural desnatado sem sabor;\n↪ Suco de 1 limão;\n↪ 1 colher de sopa de azeite;\n↪ Sal e pimenta do reino a gosto.',
                          '↪ Corte ou rale o repolho, acrescente o xuxu ralado (cru), o pimentão, a cenoura e os tomates picados. Misture a cebola picada e os ovos cozidos;\n\n↪ Misture o iorgurte ao suco do limão em outro recipiente. Acrescente o azeite, pimenta do reino e sal;\n\n↪ Misture o molho à salada e pronto!\n\n↪ Se você preferir, pode adicionar o molho somente na hora de servir.',
                          chaveAlimentos
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Macarrão \nà milanesa fit',
                          context, 
                          'assets/imagens/salgadas/macarrao_milanesa.jpg',
                          'Macarrão à milanesa',
                          '↪ 1/2kg de frango desfiado;\n↪ 1/2 limão;\n↪ 1 pote de creme de ricota light;\n↪ 1/2 litro de leite desnatado;\n↪ 1 cebola picada;\n↪ 4 dentes de alho picado;\n↪ Cheiro verde e sal a gosto;\n↪ Azeite;\n↪ Queijo ralado;\n↪ Macarrão integral.                          ',
                          '↪ Na palena de pressão, coloque o frango, o suco do limão, alho, a cebola, cheiro verde e demais temperos de sua preferência. Cubra tudo com água e deixe cozinhar até o ponto de desfiar (aproximadamente meia hora);\n\n↪ Enquanto o frango cozinha, vamos para o molho: em uma frigideira antiaderente, coloque a cebola picada e o alho, e refolgue até dourar;\n\n↪ Depois de refogados, adicione o leite (o ideal é que seja desnatado e 0 gordura). Adicione cheiro verde, sal e demais temperos de sua preferência. Adicione o creme de ricota e misture.\n\n↪ Desfie o frango e o misture ao molho branco.\n\n↪ Prepare o macarrão da forma como preferir, e pronto. AGora é só servir!', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Fricassê \nde frango', 
                          context, 
                          'assets/imagens/salgadas/fricasse_frango.jpg',
                          'Fricassê de frango',
                          '↪ 4 colheres de sopa requeijão sem lactose;\n↪ 1 cebola picada;\n↪ 3 dentes de alho\n↪ 1 lata de milho verde;\n↪ 500g de frango desfiado; \n↪ 200 g de mussarela fatiada light;\n↪ Sal a gosto; \n↪ Óleo de coco.',
                          '↪ Refolgue a cebola e o alho no óleo de coco. Acrescente o frango desfiado, o milho e temperos de sua preferência;\n\n↪ Acrescente o creme de leite até que fique cremoso;\n\n↪ Num refratário, coloque o frango, o requeijão (por cima do frango) e o queijo;\n\n↪ Coloque no forno pré-aquecido a 180° até que o queijo derreta.\n\n↪ Agora, é só servir!',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Hambúrguer \nFit',
                          context, 
                          'assets/imagens/salgadas/hamburguer2.jpg',
                          'Hambúrguer Fit',
                          '↪ Queijo cheddar light;\n↪ 50g de linguiça colonial;\n↪ 450g de carne patinho\n↪ Pimenta do reino, pápicra picante, manjericão, sal e demais temperos a gosto;\n↪ 1/3 de cebola em rodelas;\n↪ Alface e tomate a gosto;\n↪ Pão hambúrguer ou francês.\n↪ Molhos: ketchup zero, maionese light, mostarda amarela, molho de alho e demais de sua preferência.', 
                          '↪ "Desmonte" a linguiça, deixe-a bem moída para adicioná-la na carne. Misture as duas e adicione os temperos. Não coloque o sal agora;\n\n↪ Divida as porções de carne para cada hambúrguer e molde cada uma delas;\n\n↪ Em uma panela anti-aderente, coloque os hambúrgueres e refolgue a cebola junto com os hambúrgueres;\n\n↪ Quando a carne estiver quase pronta, coloque o queijo por cima;\n\n↪ Monte os hambúrgueres: adicione o molho, a cebola, alface e tomate. Agora, é só servir!',
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
