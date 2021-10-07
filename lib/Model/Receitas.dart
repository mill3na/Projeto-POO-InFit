import 'package:flutter/material.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';
import '../Controller/Dados.dart';

// ignore: must_be_immutable
class PaginasReceitas extends StatelessWidget {

  String nomeDaReceita;
  String textoIngredientes;
  String textoModoDePreparo;
  bool chavePaginasReceitas;

  PaginasReceitas(this.nomeDaReceita, this.textoIngredientes, this.textoModoDePreparo, this.chavePaginasReceitas);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundoAlimentacao),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              pularLinha(10),
              Container(
              padding: EdgeInsets.all(10),
                child: Card(
                  elevation: tamanhoSombra, // relevo/ tamanho da sombra
                  shadowColor: Color(corSombra),
                  color: Color(corSuporteFundo),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        caixaDeTexto(nomeDaReceita, corSecundaria, tamanhoLetraTitulos, TextAlign.center, fonteReceitas),
                        pularLinha(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20.0,
                              width: 110.0,
                              child: Divider(color: Color(corTextoReceitas)),
                            ),
                            caixaDeTexto("Ingredientes", corSecundaria, tamanhoLetraSubtitulos, TextAlign.center, fonteReceitas),
                            SizedBox(
                              height: 20.0,
                              width: 110.0,
                              child: Divider(color: Color(corTextoReceitas)),
                            ),
                          ],
                        ),
                        pularLinha(10),
                        caixaDeTexto(textoIngredientes, corTextoReceitas, tamanhoLetra, TextAlign.justify, fonteReceitas),
                        pularLinha(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20.0,
                              width: 100.0,
                              child: Divider(color: Color(corTextoReceitas)),
                            ),
                            caixaDeTexto('Modo de preparo', corSecundaria, tamanhoLetraSubtitulos, TextAlign.center, fonteReceitas),
                            SizedBox(
                              height: 20.0,
                              width: 100.0,
                              child: Divider(color: Color(corTextoReceitas)),
                            ),
                          ],
                        ),
                        pularLinha(10),
                        caixaDeTexto(textoModoDePreparo, corTextoReceitas, tamanhoLetra, TextAlign.justify, fonteReceitas),
                        pularLinha(20),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      botaoComBordaSair('Retornar', corSuporteFundo, corTextoReceitas, context, fonteReceitas),
                      Container(padding: EdgeInsets.all(10),),
                      Material(
                        elevation: tamanhoSombra, // relevo/ tamanho da sombra
                        color: Color(corSuporteFundo), // cor do botao
                        shadowColor: Color(corSombra), // cor da sombra
                        borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // raio da borda do botao
                        child: TextButton(
                          child: caixaDeTextoNegrito('Salvar Receita', corTextoReceitas, tamanhoLetra, TextAlign.center, fonteReceitas),
                          onPressed: () {
                            if (chavePaginasReceitas == true) {
                              avisoGenerico(context, "Sua receita foi salva!\nAcesse o menu de alimentação para conferir.", corTextoReceitas, fonte, TextAlign.center);
                            }
                            else {
                              avisoConvidado(context);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  pularLinha(20),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}