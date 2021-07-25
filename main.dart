import 'package:flutter/material.dart';
import 'package:testeteladelogin/View/telaLogin.dart';
import 'package:testeteladelogin/View/telaCadastro.dart';
import 'package:testeteladelogin/View/telaRecuperacao.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'teste InFIT',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home : InfitLogin(),
      initialRoute: 'login', // rota inicial, ou seja, a primeira pagina que deve ser exibida
      routes: {
        'login': (context) => InfitLogin(), // 'login' é a string direcionada a pagina
        'cadastro': (context) => TelaCadastro(), // 'cadastro' é a string direcionada a pagina
        'recuperacao': (context) => TelaRecuperacao(), // 'recuperacao é a string direcionada a pagina  
        // essas string servirao para podermos nos mover entre as paginas com navigator.pushnamed e navigator.pop
      },
    );
  }
}