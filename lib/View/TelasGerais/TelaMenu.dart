import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Controller/Usuario.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';
import 'package:testeteladelogin/View/TelasAlimentacao/Alimentacao.dart';
import 'TelaEditarPerfil.dart';
import 'TelaLogin.dart';
import 'TelaPerfil.dart';

// ignore: must_be_immutable
class TelaMenu extends StatefulWidget {
  
  Usuario usuario = Usuario();

  TelaMenu(this.usuario);

  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      backgroundColor: Color(corFundo),
      drawer: ClipRRect(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
        child: Drawer(
          child: Container(
            color: Color(corFundo),
            padding: EdgeInsets.only(top: 20, right: 40, left: 40,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                pularLinha(120),
                Material(
                  borderRadius: BorderRadius.all(
                    Radius.circular(80),
                  ), // raio da borda
                  elevation: tamanhoSombra,
                  shadowColor: Color(corSombra),
                  color: Colors.transparent,
                  child: GestureDetector(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Color(corSecundaria),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Color(corFundo),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage('assets/imagens/gerais/perfil.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ), pularLinha(20),
                caixaDeTexto(widget.usuario.nome, corPrimaria, tamanhoLetraTitulos, TextAlign.center, fonte),
                pularLinha(40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(backgroundColor: Color(corPrimaria),),
                        Container(
                          child: TextButton(
                            child: Text(
                              'PERFIL', // texto que sera exibido
                              style: GoogleFonts.getFont(
                                fonte,
                                fontWeight: FontWeight.bold,
                                color: Color(corPrimaria),
                                fontSize: tamanhoLetra,
                              ),
                            ),
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPerfil(widget.usuario))),
                          ),
                        ),
                      ],
                    ),
                    pularLinha(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(backgroundColor: Color(corPrimaria),),
                        Container(
                          child: TextButton(
                            child: Text(
                              'ALTERAR DADOS', // texto que sera exibido
                              style: GoogleFonts.getFont(
                                fonte,
                                fontWeight: FontWeight.bold,
                                color: Color(corPrimaria),
                                fontSize: tamanhoLetra,
                              ),
                            ),
                            onPressed: () => {
                              if (widget.usuario.chave == true) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEditarPerfil(widget.usuario))),
                              }
                              else {
                                avisoConvidado (context),
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    pularLinha(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(backgroundColor: Color(corPrimaria),),
                        botaoSemBorda('TEMAS', 'temas', corPrimaria, context, fonte),
                      ],
                    ),
                    pularLinha(40),
                    Container(
                      child: TextButton(
                        child: caixaDeTextoNegrito('Sair', corSecundaria, tamanhoLetra, TextAlign.center, fonte),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: caixaDeTexto("Deseja mesmo sair ou somente encerrar sua sessão?", corPrimaria, 18, TextAlign.center, fonte),
                                actions: <Widget>[
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: TextButton(
                                          child: Text(
                                            "Sair", // texto que sera exibido
                                            style: GoogleFonts.getFont(
                                              fonte,
                                              fontWeight: FontWeight.bold,
                                              color: Color(corSecundaria),
                                              fontSize: tamanhoLetra,
                                            ),
                                          ),
                                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TelaLogin(widget.usuario))), // OnPressed genérico
                                        ),
                                      ),
                                      botaoSemBorda('Encerrar Sessão', 'login', corSecundaria, context, fonte),
                                    ],
                                  ),
                                ]
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(corPrimaria),
                child: GestureDetector(
                  child: Icon(Icons.settings, color: Color(corSuporteFundo)),
                  onTap: () {
                    _scaffoldState.currentState!.openDrawer();
                  },
                ),
              ),
            ),
            pularLinha(40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(100),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 100,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 95,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/menu/alimentos.png'),
                              ),
                            ),
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Alimentacao(widget.usuario.chave))),
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Alimentos', corPrimaria, tamanhoLetraTitulos, TextAlign.center, fonte),
                      ],
                    ),
                    pularLinha(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(100),), // raio da borda
                          elevation: tamanhoSombra,
                          shadowColor: Color(corSombra),
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: CircleAvatar(
                              radius: 100,
                              backgroundColor: Color(corSuporteFundo),
                              child: CircleAvatar(
                                radius: 95,
                                backgroundColor: Color(corFundo),
                                backgroundImage: AssetImage('assets/imagens/menu/exercicio.png'),
                              ),
                            ),
                            onTap: () => Navigator.pushNamed(context, 'exercicios'), // OnPressed genérico
                          ),
                        ),
                        pularLinha(10),
                        caixaDeTexto('Exercícios', corPrimaria, tamanhoLetraTitulos, TextAlign.center, fonte),
                      ],
                    ),
                  ],
                ),
                pularLinha(30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}