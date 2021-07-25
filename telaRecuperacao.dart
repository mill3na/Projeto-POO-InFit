import 'package:flutter/material.dart'; // import padrao do dart
import 'package:testeteladelogin/Model/metodosTela.dart';

//import 'barraFerramentas.dart'; // import dos métodos usados

class TelaRecuperacao extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundo), // cor de fundo da tela
      body: Container( // corpo é um container e terá as limitações de margem do padding
        padding: EdgeInsets.only(top: 60, right: 40, left: 40,), // Padding para criar as margens na tela
        child: ListView(
          children: [
            CircleAvatar( // circulo de terá o icone de cadeado representando a segurança de trocar a senha
              radius: 100,
              child: Icon(Icons.privacy_tip, size: 80,), // adicionando icone
              foregroundColor: Color(corFundo),
              backgroundColor: Color(corSecundaria),
            ),
            pularLinha(20),
            Container(
              child: Column( // coluna para organizar as caixas de texto mais facilmente
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  caixaDeTexto("Esqueceu sua senha?", corPrimaria, 2 * tamanhoLetra, TextAlign.center), // texto de esqueceu sua senha
                  pularLinha(20),
                  caixaDeTexto("Insira o seu endereço de E-mail para ser enviado um link para restaurar suas informações.", corPrimaria, tamanhoLetra, TextAlign.center), // texto de restauração de senha
                  pularLinha(20),
                  preenchimentoUsuario("E-mail", TextInputType.emailAddress, Icon(Icons.privacy_tip, color: Color(corPrimaria),)), // caixa de texto do usuário de email
                  pularLinha(40),
                  botaoComBorda("    Enviar    ", '', corSecundaria, 0xFFFFFFFF, context), // botao com borda
                  pularLinha(30),
                  botaoSemBorda("Retornar", 'login', corSecundaria, context), // botao com o texto "Retornar" e vai ser direcionado para a pagina de login
                  //BarraFerramentas(),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}