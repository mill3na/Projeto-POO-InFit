import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Usuario.dart';

// IMPORT TELAS ALIMENTAÇÃO
import 'View/TelasAlimentacao/Alimentacao.dart';
import 'View/TelasAlimentacao/MenuAlimentos.dart';
import 'View/TelasAlimentacao/TelaNutricionistas.dart';

// IMPORT TELAS SEGMENTOS COM FRUTAS
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasAbacate.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasAbacaxi.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasBanana.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasKiwi.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasMelancia.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/TelasSegmentosComFrutas.dart/comFrutasMorango.dart';

// IMPORT TELAS SEGMENTOS ALIMENTOS
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/veganas.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/ComFrutas.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/bebidas.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/salgadas.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/lowCarb.dart';
import 'View/TelasAlimentacao/TelasSegmentosAlimentos/doces.dart';

// IMPORT TELAS EXERCÍCIOS
import 'View/TelasExercicios/TelaExercicios.dart';

// IMPORT TELAS GERAIS
import 'View/TelasGerais/TelaCadastro.dart';
import 'View/TelasGerais/TelaEditarPerfil.dart';
import 'View/TelasGerais/TelaLogin.dart';
import 'View/TelasGerais/TelaMenu.dart';
import 'View/TelasGerais/TelaPerfil.dart';
import 'View/TelasGerais/TelaTemas.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  Usuario usuario = Usuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'teste InFIT',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home : TelaLogin(usuario),
      initialRoute: 'login', // rota inicial, ou seja, a primeira pagina que deve ser exibida
      routes: {
        // TELAS GERAIS
        'login': (BuildContext context) => TelaLogin(usuario),
        'cadastro': (BuildContext context) => TelaCadastro(),
        'menu': (BuildContext context) => TelaMenu(usuario),
        'perfil': (context) => TelaPerfil(usuario),
        'editarPerfil': (context) => TelaEditarPerfil(usuario),
        'temas': (context) => TelaTemas(),

        // ROTAS EXERCICIO
        'exercicios': (context) => TelaExercicios(),

        // ROTAS ALIMENTAÇÃO
        'TelaNutricionistas': (context) => TelaNutricionistas(),
        'MenuAlimentos': (context) => MenuAlimentos(usuario.chave),
        'alimentacao': (context) => Alimentacao(usuario.chave),

        // ROTAS TELAS SEGMENTOS ALIMENTOS
        'TelaComFrutas': (context) => TelaComFrutas(usuario.chave),
        'TelaSalgadas': (context) => TelaSalgadas(usuario.chave),
        'TelaBebidas': (context) => TelaBebidas(usuario.chave),
        'TelaLowCarb': (context) => TelaLowCarb(usuario.chave),
        'TelaVeganas': (context) => TelaVeganas(usuario.chave),
        'TelaDoces': (context) => TelaDoces(usuario.chave),

        // ROTAS TELAS SEGMENTOS COM FRUTAS
        'TelaComFrutasMelancia': (context) => TelaComFrutasMelancia(usuario.chave),
        'TelaComFrutasAbacaxi': (context) => TelaComFrutasAbacaxi(usuario.chave),
        'TelaComFrutasAbacate': (context) => TelaComFrutasAbacate(usuario.chave),
        'TelaComFrutasMorango': (context) => TelaComFrutasMorango(usuario.chave),
        'TelacomFrutasBanana': (context) => TelaComFrutasBanana(usuario.chave),
        'TelaComFrutasKiwi': (context) => TelaComFrutasKiwi(usuario.chave),
      },
    );
  }
}