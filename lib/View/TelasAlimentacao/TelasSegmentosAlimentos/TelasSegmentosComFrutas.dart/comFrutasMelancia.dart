import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaComFrutasMelancia extends StatelessWidget {

  bool chaveAlimentos;

  TelaComFrutasMelancia(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: com melancia', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Suco rosa',
                          context,
                          'assets/imagens/comFrutas/comFrutasMelancia/suco-de-melancia.jpg', 
                          'Suco rosa',
                          '↪ 2 fatias grossas de melancia com semente;\n↪ 3 beterrabas pequenas orgânicas (com casca);\n↪ 1 punhado de morangos congelados ou frescos (1 mão cheia);\n↪ 2 colheres de sobremesa de chia;\n↪ 1 colher de sobremesa de linhaça dourada; \n↪ 600 ml de água de coco.',
                          '↪ Pique grosseiramente a melancia e coloque no liquidificador junto com os outros ingredientes. Bata bem;\n\n↪ Coe, caso ache necessário. Sirva com bastante gelo. Uma opção é usar água filtrada e fazer gelinhos com a água de coco, se preferir. Não é necessário colocar açúcar, a não ser que você queira. ',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Granita \nrosa',
                          context,
                          'assets/imagens/comFrutas/comFrutasMelancia/granita-de-melancia.jpg',  
                          'Granita rosa',
                          '↪ 1 kg de melancia cortada em pedaços;\n↪ 100g de açúcar orgânico;\n↪ Suco de um limão;\n↪ Suco de seis laranjas;\n↪ Folhas de hortelã para decorar.',
                          '↪ Corte a melancia em pedaços e descarte a casca e a parte branca. Passe-a por uma peneira para tirar as sementes e recolha o purê (suco) numa tigela;\n\n↪ À parte, coloque numa panela os sucos de limão e de laranja, acrescente o açúcar e leve ao fogo baixo para fazer uma calda. Deixe ferver por uns cinco minutos;\n\n↪ Quando a calda de laranja esfriar junte-a ao suco de melancia misture bem e coloque num recipiente para ir ao freezer por pelo menos por três horas; \n\n↪ Detalhe: coloque numa forma razoavelmente rasa. Quanto mais fina a camada de líquido mais rápido vai congelar e facilitará para raspar; \n\n↪ Depois de congelado retire do freezer e raspe a granita com um garfo. Distribua-a em taças, decore com as folhas de hortelã e refresque-se.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Molho \nde melancia',
                          context,
                          'assets/imagens/comFrutas/comFrutasMelancia/molho-de-melancia.jpg', 
                          'Molho de melancia',
                          '↪ Casca de meio kg de melancia cortada em pedaços;\n↪ 3 dentes de alho;\n↪ 1 tomate picado;\n↪ 2 copos de molho de tomate;\n↪ Suco de 1/2 limão; \n↪ Azeite e temperos a gosto.',
                          '↪ Lave bem e corte em pedaços pequenos a casca, em uma panela adicione o azeite e o alho, doure um pouco e acrescente os temperos em pó;\n\n↪ Adicione na panela o tomate picado e um pouquinho de sal para só então colocar a casca da melancia;\n\n↪  Em fogo baixo adicione o suco de limão, misture bem e adicione o molho de tomate e deixe a panela entreaberta em fogo baixo, vá mexendo as vezes e adicione água sempre que o molho estiver secando até que a melancia fique macia; \n\n↪ Finalize colocando mais molho de tomate e ajustando os temperos.', 
                          chaveAlimentos
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Salada',
                          context,
                          'assets/imagens/comFrutas/comFrutasMelancia/salada-com-melancia.jpg', 
                          'Salada com melancia',
                          '↪ Melancia e laranja cortadas em pedaços;\n↪ Ricota vegana caseira ou light.',
                          '↪ Amasse a ricota com um garfo;\n\n↪ Misture todos os ingredientes;\n\n↪  Finalize com folhinhas de salsinha, azeite, sal e uma pitada de pimenta do reino moída na hora.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Picolé \nde melancia',
                          context,
                          'assets/imagens/comFrutas/comFrutasMelancia/picole-de-melancia.jpg',
                          'Picolé de melancia',
                          '↪ 1 kg de polpa de melancia cortada grosseiramente;\n↪ 150 g de açúcar em pó;\n↪ 50 g de xarope de glucose',
                          '↪ Triture a melancia. Retirar parte do sumo (o mínimo possível) e levá-la ao fogo com a glucose e o açúcar, até que este esteja completamente dissolvido;\n\n↪ Deixe a mistura esfriar e adicione o sumo restante;\n\n↪  Encha os moldes de sorvete e congele.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Geleia \nde melancia',
                          context,
                          'assets/imagens/comFrutas/comFrutasMelancia/geleia-de-melancia.jpg', 
                          'Geleia de melancia',
                          '↪ 1/4 de melancia (para render 1 litro de suco);\n↪ 1 fava de baunilha;\n↪ 1 limão;\n↪ 1 maçã; \n↪ 1/2 xícara de açúcar demerara ou cristal',
                          '↪ Bater a melancia no liquidificador e passar em uma peneira para tirar as sementes. Deve render 1 litro de suco;\n\n↪ Adicionar em uma panela. Raspar a fava da baunilha e colocar as sementinhas na panela. Adicionar também o suco de um limão, uma maçã cortada em fatias finas e 1/2 xícara de açúcar;\n\n↪  Ligar em fogo médio baixo e cuidar até que fique em ponto de geleia. Leva entre 20 e 30 minutos;\n\n↪ Retirar as maçãs, que podem ser consumidas como sobremesa, e colocar a geleia em um vidro esterilizado.', 
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
