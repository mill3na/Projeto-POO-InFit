import 'package:flutter/material.dart'; // import padrao do dart
import 'package:testeteladelogin/View/metodosTela.dart'; // import dos métodos usados

class TelaCadastro extends StatelessWidget { // pagina estática até o momento, mas pode ser transformada em StatefulWidget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundo), // cor de fundo da tela
      body: Container( // corpo é um container e terá as limitações de margem do padding
        padding: EdgeInsets.only(top: 60, right: 40, left: 40,), // Padding para criar as margens na tela
        child: ListView(
          children: [
            caixaDeTexto("Cadastro - InFIT", corPrimaria, 2 * tamanhoLetra, TextAlign.center), // caixa de texto do cadastro
            pularLinha(60), // pular linha
            Container(
              child: Column( // coluna para organizar as caixas de texto mais facilmente
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  preenchimentoUsuario("texto generico", TextInputType.text, Icon(Icons.password)), // caixa de texto genérica
                  pularLinha(20),
                  preenchimentoUsuario("texto generico", TextInputType.text, Icon(Icons.password)),
                  pularLinha(20),
                  preenchimentoUsuario("texto generico", TextInputType.text, Icon(Icons.password)),
                  pularLinha(20),
                  preenchimentoUsuario("texto generico", TextInputType.text, Icon(Icons.password)),
                  pularLinha(20),
                  preenchimentoUsuario("texto generico", TextInputType.text, Icon(Icons.password)),
                  pularLinha(20),
                  preenchimentoUsuario("texto generico", TextInputType.text, Icon(Icons.password)),
                ],
              ),
            ),
            pularLinha(45),
            Container(
              child: Row( // row para organizar os dois botoes na horizontal, pois a coluna organiza na vertical
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  botaoSemBorda("Retornar", 'login', corPrimaria, context), // botao com o texto "Retornar" e vai ser direcionado para a pagina de login
                  botaoSemBorda("Concluir", '', corSecundaria, context), // botao com texto "Concluir", mas que nao é direcionado para canto algum
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}