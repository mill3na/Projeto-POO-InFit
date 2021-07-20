import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// variaveis para trocar: cor de fundo, cor primaria, cor secundaria, tamanho das sombras, tamanho da letra e tamanho do raio das caixas
int corPrimaria = 0xFF80BDD9;
int corSecundaria = 0xFF877FD7; 
int corFundo = 0xFF434445;
//int corFundo = 0xFFFFFFFF;
double tamanhoRaio = 40;
double tamanhoSombra = 4;
double tamanhoLetra = 15;

// método dar espaço na tela
pularLinha(double pular) {
  return SizedBox(height: pular,); // pula alguns pixeis na tela
}

// método de criar um botao sem borda 
botaoSemBorda(String texto, String pagina, int corTexto, BuildContext context) {
  return Center( // center
    child: TextButton( 
      child: Text(
        texto, // texto que sera exibido
        style: GoogleFonts.basic(  // estilo do botao: fonte, cor, e possui as fontes do google
          textStyle: TextStyle(
            fontWeight: FontWeight.bold, 
              color: Color(corTexto),
              fontSize: tamanhoLetra,
          ),
        ),
      ),
      onPressed: () => Navigator.pushNamed(context, pagina), // OnPressed genérico
    ),
  );
}

// método de criar um botao com borda sem ação
botaoComBorda(String texto, String pagina, int corBotao, int corTexto, BuildContext context) {
  return Center( // center
    child: Material( // material para adicionar sombras e relevo
      elevation: tamanhoSombra, // relevo/ tamanho da sombra
      color: Color(corBotao), // cor do botao
      shadowColor: Color(corSecundaria), // cor da sombra
      borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // raio da borda do botao

      child: TextButton(
        child: Text( 
          texto, // texto que sera exibido
          style: GoogleFonts.basic( // estilo do botao: fonte, cor, e possui as fontes do google
            textStyle: TextStyle(
              fontWeight: FontWeight.bold, 
              color: Color(corTexto),
              fontSize: tamanhoLetra,
            ),
          ),
        ),
        onPressed: () => Navigator.pushNamed(context, pagina), // OnPressed genérico
      ),
    ),
  );
}

// método de criar uma caixa de texto
caixaDeTexto(String texto, int corTexto, double tamanhoFonte, TextAlign ajustar) {
  return Container( // container
    child: Text(
      texto, // texto que sera exibido
      textAlign: ajustar, // como ele será ajustado. ex: centro, direita, esquerda, topo direita, etc...
      style: GoogleFonts.basic( // estilo do botao: fonte, cor, e possui as fontes do google 
        textStyle: TextStyle(
          fontWeight: FontWeight.bold, 
          color: Color(corTexto), 
          fontSize: tamanhoFonte,
        ),
      ),
    ),
  );
}

// método de criar uma caixa de texto para preenchimento do usuário
preenchimentoUsuario(String texto, TextInputType tipoTeclado, Icon icone) {
  return Material(
    borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // raio da borda
    elevation: tamanhoSombra,
    shadowColor: Color(corSecundaria),
    color: Color(corFundo),
    child: TextFormField(
      keyboardType: tipoTeclado,
      textAlign: TextAlign.center,
      decoration: new InputDecoration(
        hintText: texto, // Texto da caixa de texto "senha"
        hintStyle: GoogleFonts.basic(
          textStyle:TextStyle( // estilo do texto que vai ser exibido
            color: Color(corPrimaria),
            fontWeight: FontWeight.w400,
            fontSize: tamanhoLetra, 
          ),
        ),
        prefixIcon: icone,
        focusedBorder: OutlineInputBorder( // borda quando esta selecionada
          borderSide: BorderSide(color: Color(corPrimaria)), // Cor da borda
          borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // Raio da borda
        ),
        enabledBorder: OutlineInputBorder( // borda quando nao esta selecionada
          borderSide: BorderSide(color: Color(corPrimaria)), // Cor da borda
          borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // Raio da borda
        ),
      ),
      style: GoogleFonts.basic(
        textStyle: TextStyle(
          fontSize: tamanhoLetra, 
          color: Color(corPrimaria),
        ),
      ), // tamanho e cor da fonte
    ),
  );
}

// método de criar linhas na tela
divisao(int corLinha, double alturaLinha, double grossuraLinha, double indentacaoLinha) {
  return Container(
    child: Divider( // chamada de criação da linha que recebe:
      color: Color(corLinha), // cor da linha
      height: alturaLinha, // altura da linha
      thickness: grossuraLinha, // grossura da linha
      indent: indentacaoLinha, // identação no começo
      endIndent: indentacaoLinha, // identação no final
    ),
  );
}
