import 'package:flutter/material.dart'; // import padrao do dart
import 'package:testeteladelogin/View/metodosTela.dart'; // import dos métodos usados

class InfitLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundo), // cor de fundo da tela
      body: Container( // corpo é um container e terá as limitações de margem do padding
        padding: EdgeInsets.only(top: 60, right: 40, left: 40,), // Padding para criar as margens na tela
        child: ListView(
          children: <Widget>[
            caixaDeTexto("Login - InFIT", corPrimaria, 30, TextAlign.center), // texto de login
            pularLinha(80), // pula pixel da tela
            preenchimentoUsuario("E-mail ou nome de usuário", TextInputType.emailAddress, Icon(Icons.people)), // caixa de texto do usuário para nome de usuário ou email
            pularLinha(20),
            preenchimentoUsuario("Senha", TextInputType.text, Icon(Icons.password)), // caixa de texto do usuário para a senha
            pularLinha(50),
            botaoComBorda("    Entrar    ", '', corSecundaria, 0xFFFFFFFF, context), // botao com texto entrar, mas que nao é direcionado para canto algum
            botaoSemBorda("Esqueceu a senha?", 'recuperacao', corPrimaria, context), // botao sem borda com texto "esqueceu a senha?" e vai ser direcionado para a pagina de recuperacao
            pularLinha(40),
            Container( // DIVISÃO COM TEXTO
              child: Row( // row para organizar os dois botoes na horizontal, pois a coluna organiza na vertical
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded( // expanded para aparecer a linha na tela, pois normalmente nao teria espaço
                    child: divisao(corPrimaria, 10, 1, 10), // linha na tela
                  ),
                  caixaDeTexto("Entre com", corPrimaria, tamanhoLetra, TextAlign.center), // texto "entre com"
                  Expanded( // expanded para aparecer a linha na tela, pois normalmente nao teria espaço
                    child: divisao(corPrimaria, 10, 1, 10), // linha na tela
                  ),
                ],
              ),
            ),
            pularLinha(30),
            Container( // container
              child: Row( // row para organizar os dois botoes na horizontal, pois a coluna organiza na vertical
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    botaoComBorda("   Google    ", '', 0xFFFFFFFF, 0x8A000000, context), // botao do logar com google, mas que nao é direcionado para canto algum
                    botaoComBorda("  Facebook  ", '', 0xFF4267B2, 0xFFFFFFFF, context), // botao do logar com facebook, mas que nao é direcionado para canto algum
                    botaoComBorda("   Twitter   ", '', 0xFF00ACEE, 0xFFFFFFFF, context), // botao do logar com twitter, mas que nao é direcionado para canto algum
                  ],
              ),
            ),
            pularLinha(50),
            Container( // container
              child: Row( // row para organizar os dois botoes na horizontal, pois a coluna organiza na vertical
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  caixaDeTexto("Não possui conta?", corPrimaria, tamanhoLetra, TextAlign.center), // caixa de texto "nao possui conta?"
                  botaoSemBorda("Registre-se", 'cadastro', corSecundaria, context), // botao sem borda com texto "registre-se" e vai ser direcionado para a pagina de cadastro
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}