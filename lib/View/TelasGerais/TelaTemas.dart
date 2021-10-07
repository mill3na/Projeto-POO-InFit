import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

class TelaTemas extends StatefulWidget {

  @override
  _TelaTemaState createState() => _TelaTemaState();
}

class _TelaTemaState extends State<TelaTemas> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundo),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100, right: 40, left: 40,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            caixaDeTexto("PERSONALIZE O SEU APLICATIVO", corPrimaria, tamanhoLetraTitulos, TextAlign.center, fonte),
            pularLinha(40),
            caixaDeTexto("Escolha o tema", corSecundaria, tamanhoLetra, TextAlign.center, fonte), pularLinha(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botaoCorEstadoGradiente(0xFF444444, 0xFF333333, 0xFFFFFFFF, corFundoAlimentacao, TextAlign.center, 2),
                botaoCorEstadoGradiente(0xFFFFFFFF, 0xFFFFFFFF, 0xFF444444, corFundoAlimentacao, TextAlign.center, 2),
              ],
            ), pularLinha(10),
            divisao(corPrimaria, 10, 1, 5), pularLinha(10),
            caixaDeTexto("Escolha a paleta de cores", corSecundaria, tamanhoLetra, TextAlign.center, fonte), pularLinha(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botaoCorEstadoGradiente(0xFF32CBFF, 0xFF00A5E0, corTextoReceitas, 0xFF80C8FF, TextAlign.center, 1),
                botaoCorEstadoGradiente(0xFFFFB577, 0xFFC57742, corTextoReceitas, 0xFFFFB577, TextAlign.center, 1),
                botaoCorEstadoGradiente(0xFF4E9C81, 0xFF207567, corTextoReceitas, 0xFF80CBC4, TextAlign.center, 1),
              ], 
            ), pularLinha(10),
            divisao(corPrimaria, 10, 1, 5), pularLinha(10),
            caixaDeTexto("Modo daltonismo", corSecundaria, tamanhoLetra, TextAlign.center, fonte), pularLinha(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botaoCorEstadoGradiente(0xFF80BDD9, 0xFF877FD7, 0xFFFFFFFF, 0xFFFFFFFF, TextAlign.center, 1),
                botaoCorEstadoGradiente(0xFFFFD4B8, 0xFFFEB7B3, 0xFFFFFFFF, 0xFFFFFFFF, TextAlign.center, 1),
                botaoCorEstadoGradiente(0xFF97E5D7, 0xFFD2EBD8, 0xFFFFFFFF, 0xFFFFFFFF, TextAlign.center, 1),
              ],
            ), pularLinha(20),
            divisao(corPrimaria, 10, 1, 5), pularLinha(10),
            caixaDeTexto("Ajustar tamanho de fonte", corSecundaria, tamanhoLetra, TextAlign.center, fonte), pularLinha(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (tamanhoLetra == 12) {
                        tamanhoLetra = tamanhoLetra;
                      }
                      else {
                        tamanhoLetra = tamanhoLetra - 2;
                      }
                    });
                  },
                  child: caixaDeTextoNegrito('Diminuir', corPrimaria, tamanhoLetra, TextAlign.center, fonte),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (tamanhoLetra == 20) {
                        tamanhoLetra = tamanhoLetra;
                      }
                      else {
                        tamanhoLetra = tamanhoLetra + 2;
                      }
                    });
                  },
                  child: caixaDeTextoNegrito('Aumentar', corPrimaria, tamanhoLetra, TextAlign.center, fonte),
                ),
              ],
            ), pularLinha(20),
            botaoSemBorda('Sair', 'menu', corSecundaria, context, fonte),
          ],
        ),
      ),
    );
  }

  botaoCorEstadoGradiente(int cor, int cor2, int cor3, int cor4, TextAlign ajustar, double numero) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(30),), // raio da borda
      elevation: tamanhoSombra,
      shadowColor: Color(corSombra),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color(cor),
            Color(cor2),
          ]),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          child: GestureDetector(
            onTap: () { // ontap quando for pressionado o botao
              setState(() { // setstate() para setar o estado
                if (numero == 1) {
                  if (corFundo == 0xFF444444) {
                    corPrimaria = cor;
                    corSecundaria = cor2;
                    corFundoAlimentacao = 0xFF444444;
                  }
                  else if (corFundo == 0xFFFFFFFF) {
                    corPrimaria = cor;
                    corSecundaria = cor2;
                    if (corPrimaria == 0xFF32CBFF) {
                    corFundoAlimentacao = 0xFF80C8FF;
                    }
                    else if (corPrimaria == 0xFFFFB577) {
                      corFundoAlimentacao = 0xFFFFB577;
                    }
                    else if (corPrimaria == 0xFF4E9C81) {
                      corFundoAlimentacao = 0xFF80CBC4;
                    }
                  }
                }
                else {
                  corFundo = cor;
                  corSuporteFundo = cor2;
                  corTextoReceitas = cor3;
                  if (corFundo == 0xFF444444) {
                    corFundoAlimentacao = 0xFF444444;
                    corTextoReceitas = cor3;
                  }
                  else if (corFundo == 0xFFFFFFFF) {
                    if (corPrimaria == 0xFF32CBFF) {
                      corFundoAlimentacao = 0xFF80C8FF;
                      corTextoReceitas = cor3;
                    }
                    else if (corPrimaria == 0xFFFFB577) {
                      corFundoAlimentacao = 0xFFFFB577;
                      corTextoReceitas = cor3;
                    }
                    else if (corPrimaria == 0xFF4E9C81) {
                      corFundoAlimentacao = 0xFF80CBC4;
                      corTextoReceitas = cor3;
                    }
                    if (corPrimaria == 0xFF80BDD9) {
                      corFundoAlimentacao = 0xFF80C8FF;
                      corTextoReceitas = 0xFF444444;
                    }
                    else if (corPrimaria == 0xFFFFD4B8) {
                      corFundoAlimentacao = 0xFFFFB577;
                      corTextoReceitas = 0xFF444444;
                    }
                    else if (corPrimaria == 0xFF97E5D7) {
                      corFundoAlimentacao = 0xFF80CBC4;
                      corTextoReceitas = 0xFF444444;
                    }
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }
}