import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaComFrutasBanana extends StatelessWidget {

  bool chaveAlimentos;

  TelaComFrutasBanana(this.chaveAlimentos);

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
                caixaDeTexto('Alimentação: com banana', corSuporteTexto, 20, TextAlign.center, fonteReceitas),
                pularLinha(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Banana \ncom grãos',
                          context,
                          'assets/imagens/comFrutas/comFrutasBanana/banana_com_graos.jpg', 
                          ' Banana com grãos ',
                          '↪ 1 banana média;\n↪ Granola, castanhas, aveia, uva passa a gosto;\n↪ Mel a gosto.',
                          '↪ Amasse ou corte a banana em rodelas e reserve em um recipiente fundo;\n\n↪ Adicione a granola, a uva passa, as castanhas e o mel por cima;\n\n↪ Sirva-se!', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Bolo \nde Banana',
                          context,
                          'assets/imagens/comFrutas/comFrutasBanana/bolo_banana.jpg', 
                          'Bolo de banana ',
                          '↪ 3 ovos;\n↪ 4 bananas;\n↪ 1 xícara de uva passa;↪ 1/2 xícara de farinha de aveia\n↪ 1 colher de fermento;\n↪ Canela;\n↪ Óleo de coco.',
                          '↪ No liquidificador, adicione os ovos, as bananas, a canela e a uva-passa. Bata por 30 segundos;\n\n↪ Adicione a farinha de aveia e o fermento, depois bata por mais 1 minuto e reserve;\n\n↪ Unte uma forma redonda com óleo de coco e farinha de aveia. Despeje a massa dentro e espalhe; \n\n↪ Leve ao forno a 200 graus por 40 minutos ou até assar por completo. Após esfriar, retire da forma e sirva.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Brigadeiro \nde banana',
                          context,
                          'assets/imagens/comFrutas/comFrutasBanana/brigadeiro_banana.jpg', 
                          ' Brigadeiro de banana ',
                          '↪ 2 bananas maduras;\n↪ 2 colheres de sopa de cacau em pó;\n↪ 5 colheres de sopa de leite em pó (ou leite em pó de arroz).',
                          '↪ Leve as bananas ao microondas por aproximadamente 3 minutos, até que estejam cozidas;\n\n↪ Descasque e amasse as bananas;\n\n↪ Misture as bananas ao cacau em pó e ao leite em pó até que obtenha ponto de brigadeiro. Caso necessário, adicione mais leite em pó.\n\n↪ Caso queira comer como brigadeiro de colher, este é o momento. \n\n↪ Se quiser enrolar, cubra com plástico filme e leve a geladeira por aproximadamente duas horas.\n\n↪ Enrole o doce em bolinhas e coloque cacau em pó por cima.',
                          chaveAlimentos
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        botaoCorEstadoReceitas(
                          'Cookie \nde banana',
                          context,
                          'assets/imagens/comFrutas/comFrutasBanana/cookie_banana.jpg', 
                          ' Cookie de banana ',
                          '↪ 1 ovo batido;\n↪ 1 colher de sopa de mel\n↪ 1 banana amassada;\n↪ 1 colher de chá de manteiga\n↪ 1/4 de xícara de aveia em flocos;\n↪ 1 e 1/4 de xícara de farinha de aveia;\n↪ 2 colheres de sobremesa de fermento em pó;\n↪ Canela.',
                          '↪ Em uma tigela, adicione o ovo e o mel e misture com um fouet. Acrescente a banana e a manteiga, depois mexa novamente;\n\n↪ Misturando após adicionar cada ingrediente, coloque a aveia, a canela e um pouco da farinha de aveia. Adicione o fermento, misture e acrescente o restante da farinha, mexendo até formar uma massinha que solte das mãos;\n\n↪ Polvilhe farinha de aveia em uma bancada e abra a massa com um rolo, até ficar com uma espessura aproximada de 0,5 centímetro. Polvilhe mais canela por cima da massa; \n\n↪ Use um cortador redondo para modelar a massa em biscoitinhos e coloque-os em uma assadeira;\n\n↪ Com um garfo, faça furinhos na massa e leve para assar em forno preaquecido a 180 graus por cerca de 10 a 12 minutos;\n\n↪ Após dourar, retire do forno, coloque em um prato e está pronto para servir.',
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Panqueca \nde banana',
                          context,
                          'assets/imagens/comFrutas/comFrutasBanana/panqueca_banana.jpg', 
                          ' Panqueca de banana ',
                          '↪ 1 banana;\n↪ 2 ovos;\n↪ 2 colheres de sopa de aveia;\n↪ 1 pitada de canela e mel a gosto;\n↪ Óleo para untar.',
                          '↪ Coloque a banana em um prato fundo e amasse-a com o auxílio de um garfo;\n\n↪ Adicione os ovos, a aveia e a canela e misture até incorporar tudo;\n\n↪ Unte uma frigideira com óleo e espalhe a massa da panqueca. Deixe cozinhar com tampa até dourar embaixo, depois vire;\n\n↪ Transfira para um prato e sirva com mel.', 
                          chaveAlimentos
                        ),
                        pularLinha(20),
                        botaoCorEstadoReceitas(
                          'Sorvete \nde banana',
                          context,
                          'assets/imagens/comFrutas/comFrutasBanana/sorvete_banana.jpg', 
                          ' Sorvete de banana ',
                          '↪ 300 g de bananas picadas e congeladas;\n↪ 1 colher de sopa de mel;\n↪ 1 colher de sopa de cacau em pó 100%;\n↪ Ameixa picada\n↪ Nozes picadas.',
                          '↪ Em um processador, adicione as bananas, o mel e o cacau. Bata até ficar cremoso. Caso não tenha processador, bata no liquidificador, aos poucos e mexendo sempre, para não queimar;\n\n↪ Acrescente a ameixa e as nozes e misture. Transfira para um pote com tampa;\n\n↪ Deixe no congelador por, no mínimo, 5 horas. Depois, é só servir!',
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
