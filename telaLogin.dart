import 'package:flutter/material.dart'; // import padrao do dart
import 'package:testeteladelogin/Model/metodosTela.dart';

class InfitLogin extends StatefulWidget {

  @override
  _InfitLoginState createState() => _InfitLoginState();
}

class _InfitLoginState extends State<InfitLogin> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      backgroundColor: Color(corFundo), // cor de fundo da tela
      drawer: Drawer(
        child: Container(
          color: Color(corSuporteFundo),
          child: ListView(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
          children: <Widget>[
            DrawerHeader(
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(10),), // raio da borda
                elevation: tamanhoSombra,
                shadowColor: Color(corSuporteFundo),
                  color: Color(corFundo),
                  child: Container(
                    padding: const EdgeInsets.only(top: 20, left: 80, right: 80, bottom: 100),
                    decoration: BoxDecoration(
                      color: Color(corFundo),
                      borderRadius: BorderRadius.all(Radius.circular(10),), // raio da borda
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(corPrimaria),
                        borderRadius: BorderRadius.all(Radius.circular(10),), // raio da borda
                      ),
                    ),
                  ),
              ),
            ),
            caixaDeTexto("Preview", corSecundaria, 20, TextAlign.center),
            pularLinha(25),
            divisao(corPrimaria, 10, 1, 5),
            pularLinha(10),





            //-----------------------------------------------------------------------------------
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                caixaDeTexto("Escolha o tema", corSecundaria, tamanhoLetra, TextAlign.center),
                pularLinha(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(30),), // raio da borda
                      elevation: tamanhoSombra,
                      shadowColor: Color(corSombra),
                      color: Color(0xFF444444),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFF444444),
                        child: GestureDetector(
                          onTap: () { // ontap quando for pressionado o botao
                            setState(() { // setstate() para setar o estado
                              corFundo = 0xFF444444;
                              corSuporteFundo = 0xFF333333;
                            });
                          },
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(30),), // raio da borda
                      elevation: tamanhoSombra,
                      shadowColor: Color(corSombra),
                      color: Color(0xFFFFFFFF),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFFFFFFFF),
                        child: GestureDetector(
                          onTap: () { // ontap quando for pressionado o botao
                            setState(() { // setstate() para setar o estado
                              corFundo = 0xFFFFFFFF;
                              corSuporteFundo = 0xFFFFFFFF;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),



                pularLinha(10),
                divisao(corPrimaria, 10, 1, 5),
                pularLinha(10),
                caixaDeTexto("Escolha a paleta de cores", corSecundaria, tamanhoLetra, TextAlign.center),
                pularLinha(10),



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(30),), // raio da borda
                      elevation: tamanhoSombra,
                      shadowColor: Color(corSombra),
                      color: Color(0xFF32CBFF),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF32CBFF),
                              Color(0xFF00A5E0),
                            ]
                          ),
                        ),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.transparent,
                            child: GestureDetector(
                              onTap: () { // ontap quando for pressionado o botao
                                setState(() { // setstate() para setar o estado
                                  corPrimaria = 0xFF32CBFF;
                                  corSecundaria = 0xFF00A5E0;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(30),), // raio da borda
                      elevation: tamanhoSombra,
                      shadowColor: Color(corSombra),
                      color: Color(0xFFF37748),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFF37748),
                              Color(0xFFD56062),
                            ]
                          ),
                        ),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.transparent,
                            child: GestureDetector(
                              onTap: () { // ontap quando for pressionado o botao
                                setState(() { // setstate() para setar o estado
                                  corPrimaria = 0xFFF37748;
                                  corSecundaria = 0xFFD56062;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(30),), // raio da borda
                      elevation: tamanhoSombra,
                      shadowColor: Color(corSombra),
                      color: Color(0xFF9ECE9A),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF9ECE9A),
                              Color(0xFF74A57F),
                            ]
                          ),
                        ),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.transparent,
                            child: GestureDetector(
                              onTap: () { // ontap quando for pressionado o botao
                                setState(() { // setstate() para setar o estado
                                  corPrimaria = 0xFF9ECE9A;
                                  corSecundaria = 0xFF74A57F;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                pularLinha(10),
                divisao(corPrimaria, 10, 1, 5),
                pularLinha(10),
                caixaDeTexto("Modo daltonismo", corSecundaria, tamanhoLetra, TextAlign.center),
                pularLinha(10),


                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: GestureDetector(
                        child: caixaDeTexto(
                          "deuteranopia", corPrimaria, tamanhoLetra, TextAlign.center
                        ),
                        onTap: () { // ontap quando for pressionado o botao
                          setState(() { // setstate() para setar o estado
                            //corPrimaria = 0xFF80BDD9;
                            //corSecundaria = 0xFF877FD7;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        child: caixaDeTexto(
                          "protanopia", corPrimaria, tamanhoLetra, TextAlign.center
                        ),
                        onTap: () { // ontap quando for pressionado o botao
                          setState(() { // setstate() para setar o estado
                            //corPrimaria = 0xFFFFD4B8;
                            //corSecundaria = 0xFFFEB7B3;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        child: caixaDeTexto(
                          "tritanopia", corPrimaria, tamanhoLetra, TextAlign.center
                        ),
                        onTap: () { // ontap quando for pressionado o botao
                          setState(() { // setstate() para setar o estado
                            //corPrimaria = 0xFF97E5D7;
                            //corSecundaria = 0xFFD2EBD8;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )





          ],
        ),
        )
      ),
//-------------------------------------------------
      body: Container( // corpo é um container e terá as limitações de margem do padding
        padding: EdgeInsets.only(top: 20, right: 40, left: 40,), // Padding para criar as margens na tela
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(corPrimaria),
                child: GestureDetector(
                  child: Icon(Icons.menu, color: Color(corFundo)),
                  onTap: () {
                    _scaffoldState.currentState!.openDrawer();
                  },
                ),
              ),
            ),

            pularLinha(40),
            caixaDeTexto("Login - InFit", corPrimaria, 30, TextAlign.center), // texto de login
            pularLinha(70), // pula pixel da tela
            preenchimentoUsuario("E-mail ou nome de usuário", TextInputType.emailAddress, Icon(Icons.people, color: Color(corPrimaria),)), // caixa de texto do usuário para nome de usuário ou email
            pularLinha(20),
            preenchimentoUsuario("Senha", TextInputType.text, Icon(Icons.password, color: Color(corPrimaria),)), // caixa de texto do usuário para a senha
            pularLinha(50),
            botaoComBorda("    Entrar    ", '', corSecundaria, 0xFFFFFFFF, context), // botao com texto entrar, mas que nao é direcionado para canto algum
            botaoSemBorda("Esqueceu a senha?", 'recuperacao', corPrimaria, context), // botao sem borda com texto "esqueceu a senha?" e vai ser direcionado para a pagina de recuperacao
            pularLinha(30),
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
            pularLinha(30),
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