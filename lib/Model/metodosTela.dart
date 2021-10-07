import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/Receitas.dart';
import 'package:testeteladelogin/Model/TelaAtividadeFisicaGenerica.dart';
import 'ListasGenericasExercicios.dart';

// método dar espaço na tela
pularLinha(double pular) {
  return SizedBox(height: pular,);
}

pularLado(double pular) {
  return SizedBox(width: pular,);
}

// método de criar um botao sem borda
botaoSemBorda(String texto, String pagina, int corTexto, BuildContext context, String fontes) {
  return Container(
    child: TextButton(
      child: Text(
        texto, // texto que sera exibido
        style: GoogleFonts.getFont(
          fontes,
          fontWeight: FontWeight.bold,
          color: Color(corTexto),
          fontSize: tamanhoLetra,
        ),
      ),
    onPressed: () => Navigator.pushNamed(context, pagina), // OnPressed genérico
    ),
  );
}

botaoSemBordaSair(String texto, int corTexto, BuildContext context, String fontes) {
  return Container(
    child: TextButton(
      child: Text(
        texto, // texto que sera exibido
        style: GoogleFonts.getFont(
          fontes,
          fontWeight: FontWeight.bold,
          color: Color(corTexto),
          fontSize: tamanhoLetra,
        ),
      ),
    onPressed: () => Navigator.pop(context), // OnPressed genérico
    ),
  );
}

// método de criar um botao com borda sem ação
botaoComBorda(String texto, String pagina, int corBotao, int corTexto, BuildContext context, String fontes) {
  return Material(
    elevation: tamanhoSombra, // relevo/ tamanho da sombra
    color: Color(corBotao), // cor do botao
    shadowColor: Color(corSombra), // cor da sombra
    borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // raio da borda do botao
    child: botaoSemBorda(texto, pagina, corTexto, context, fontes),
  );
}

botaoComBordaSair(String texto, int corBotao, int corTexto, BuildContext context, String fontes) {
  return Material(
    elevation: tamanhoSombra, // relevo/ tamanho da sombra
    color: Color(corBotao), // cor do botao
    shadowColor: Color(corSombra), // cor da sombra
    borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // raio da borda do botao
    child: botaoSemBordaSair(texto, corTexto, context, fontes),
  );
}

// método de criar uma caixa de texto
caixaDeTexto(String texto, int corTexto, double tamanhoFonte, TextAlign ajustar, String fontes) {
  return Container(
    child: Text(
      texto, // texto que sera exibido
      textAlign: ajustar, // como ele será ajustado. ex: centro, direita, esquerda, topo direita, etc...
      style: GoogleFonts.getFont(
        fontes,
        color: Color(corTexto),
        fontSize: tamanhoFonte,
      ),
    ),
  );
}

caixaDeTextoNegrito(String texto, int corTexto, double tamanhoFonte, TextAlign ajustar, String fontes) {
  return Container(
    child: Text(
      texto, // texto que sera exibido
      textAlign: ajustar, // como ele será ajustado. ex: centro, direita, esquerda, topo direita, etc...
      style: GoogleFonts.getFont(
        fontes,
        fontWeight: FontWeight.bold,
        color: Color(corTexto),
        fontSize: tamanhoFonte,
      ),
    ),
  );
}

// método de criar uma caixa de texto para preenchimento do usuário
preenchimentoUsuario(String texto, TextInputType tipoTeclado, Icon icone) {
  return Padding(
  padding: EdgeInsets.only(right: 20, left: 20,),
    child: Material(
      borderRadius: BorderRadius.all(Radius.circular(tamanhoRaio),), // raio da borda
      elevation: tamanhoSombra,
      shadowColor: Color(corSombra),
      color: Color(corFundo),
      child: TextField(
          keyboardType: tipoTeclado,
          textAlign: TextAlign.center,
          decoration: new InputDecoration(
            hintText: texto, // Texto da caixa de texto "senha"
            hintStyle: GoogleFonts.libreFranklin(
            textStyle: TextStyle( // estilo do texto que vai ser exibido
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
        style: GoogleFonts.getFont(
          fonte,
          fontSize: tamanhoLetra,
          color: Color(corPrimaria),
        ),
      ),
    ),
  );
}

// método de criar linhas na tela
divisao(int corLinha, double alturaLinha, double grossuraLinha, double indentacaoLinha) {
  return Container(
    child: Divider(
      color: Color(corLinha), // cor da linha
      height: alturaLinha, // altura da linha
      thickness: grossuraLinha, // grossura da linha
      indent: indentacaoLinha, // identação no começo
      endIndent: indentacaoLinha, // identação no final
    ),
  );
}

// método de criar botao com imagem e texto
botaoComImagem(double raio, double altura, double largura, double opacidade, String texto, int corTexto, int corSombraTexto, String caminhoImagem, BuildContext context, String pagina) {
  return Material(
    borderRadius: BorderRadius.all(Radius.circular(raio)),
    elevation: tamanhoSombra,
    shadowColor: Color(corSombra),
    color: Colors.transparent,
    child: InkWell(
      borderRadius: BorderRadius.all(Radius.circular(raio)),
      splashColor: Color(corSecundaria).withOpacity(opacidade),
      child: Ink(
        height: altura,
        width: largura,
        child: Center(
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(
              fonte,
              fontWeight: FontWeight.bold,
              color: Color(corTexto),
              fontSize: 20,
              shadows: <Shadow>[
                Shadow(
                  blurRadius: 10.0,
                  color: Color(corSombraTexto),
                ),
                Shadow(
                  blurRadius: 10.0,
                  color: Color(corSombraTexto),
                ),
                Shadow(
                  blurRadius: 10.0,
                  color: Color(corSombraTexto),
                ),
                Shadow(
                  blurRadius: 10.0,
                  color: Color(corSombraTexto),
                ),
                Shadow(
                  blurRadius: 10.0,
                  color: Color(corSombraTexto),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage(caminhoImagem),
            fit: BoxFit.cover,
          ),
        ),
      ),
      onLongPress: () {
        Navigator.pushNamed(context, pagina);
      },
    ),
  );
}

// método de criar um botao com estado
botaoCorEstado(String pagina, String texto, BuildContext context, String imagem, int corLetra, String fontes) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
          elevation: tamanhoSombra,
          shadowColor: Color(corSombra),
          color: Colors.transparent,
          child: GestureDetector(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Color(corSuporteFundo),
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Color(corFundo),
                backgroundImage: AssetImage(imagem),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, pagina), // OnPressed genérico
          ),
        ),
        pularLinha(10),
        caixaDeTexto(texto, corLetra, tamanhoLetra, TextAlign.center, fontes),
      ],
    );
  }

// método de criar um botao icone
iconeMenu(context, corFundoIcone, corIcone, Alignment ajustar, int corFundo) {
  return Container(
    alignment: ajustar,
    color: Color(corFundo),
    child: CircleAvatar(
      radius: 20,
      backgroundColor: Color(corFundoIcone),
      child: GestureDetector(
          child: Icon(
            Icons.reorder,
            color: Color(corIcone),
          ),
          onTap: () => Navigator.pushNamed(context, 'MenuAlimentos')),
    ),
  );
}

// método de criar um botao com imagem
botaoSemBordaComImagem(String pagina, BuildContext context, String caminhoDaImagem) {
  return Center(
    child: MaterialButton(
      color: Colors.white,
      child: CircleAvatar(
        radius: 70.0,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 65,
          backgroundImage: AssetImage(caminhoDaImagem),
        ),
      ),
      shape: CircleBorder(),
      onPressed: () =>
          Navigator.pushNamed(context, pagina), // OnPressed genérico
    ),
  );
}

// método de criar um card com texto
card(String instagram) {
    return Card(
      margin: EdgeInsets.only(top: 20,),
      color: Colors.yellow[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
      shadowColor: Colors.black,
      elevation: 7,
      child: ListTile(
        title: Text(instagram,
          style: GoogleFonts.dosis().copyWith(
            color: Colors.black,
            fontSize: tamanhoLetraSubtitulos,
            fontWeight: FontWeight.bold)
        ),
      ),
    );
  }

// método de criar um card com foto
cardComFoto(String imagem) {
    return Card(
      margin: EdgeInsets.only(right: 22, left: 22, top: 10, bottom: 20),
      elevation: tamanhoSombra,
      shadowColor: Colors.black,
      color: Color(corSuporteFundo),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),),
              child: new Image.asset(imagem),
            ),
          ),
        ],
      ),
    );
  }

// método de criar um aviso para o usuário convidado
avisoConvidado (context) {
  return 
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color(corFundo),
        title: caixaDeTextoNegrito("Usuário Convidado não possui acesso. \nCrie uma conta para ter acesso a esta funcionalidade.", corPrimaria, tamanhoLetra, TextAlign.center, fonte),
      );
    },
  );
}

// método de criar um aviso genérico(personalizavel)
avisoGenerico(context, String texto, int corTexto, String fonte, TextAlign ajustar) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color(corFundo),
        title: caixaDeTexto(texto, corTexto, tamanhoLetra, ajustar, fonte),
      );
    },
  );
}

// método de criar um botao de ir para os exercícios
botaoExercicio(context, String texto, TelaAtividadeFisicaGenerica exercicio) {
  return ElevatedButton(
    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => exercicio)),
    style: ButtonStyle(
      backgroundColor:  MaterialStateProperty.all(Color(corExercicio)),
    ),
    child: SizedBox(
      width: 200,
      height: 30,
      child: Center(
        child: Text(texto),
      )
    )
  );
}

// método de criar um botao de ir para receitas
botaoCorEstadoReceitas(String texto, BuildContext context, String imagem, String nomeDaReceita, String textoIngredientes, String textoModoDePreparo, bool chaveAlimentos) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
          elevation: tamanhoSombra,
          shadowColor: Color(corSombra),
          color: Colors.transparent,
          child: GestureDetector(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Color(corSuporteFundo),
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Color(corFundo),
                backgroundImage: AssetImage(imagem),
              ),
            ),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => PaginasReceitas(nomeDaReceita, textoIngredientes, textoModoDePreparo, chaveAlimentos))),// OnPressed genérico
          ),
        ),
        pularLinha(10),
        caixaDeTexto(texto, corDoTexto, tamanhoLetra, TextAlign.center, fonteReceitas),
      ],
    );
  }

botaoCorEstadoExercicio(
    String texto,
    BuildContext context, String imagem,
    tituloTemaExercicio, 
    texto1, texto2, texto3, texto4, texto5, texto6,
    imagem1, imagem2, imagem3, imagem4, imagem5, imagem6,
  ) 
  {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Material(
        borderRadius: BorderRadius.all(Radius.circular(60),), // raio da borda
        elevation: tamanhoSombra,
        shadowColor: Color(corSombra),
        color: Colors.transparent,
        child: GestureDetector(
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Color(corSuporteFundo),
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Color(corFundo),
              backgroundImage: AssetImage(imagem),
            ),
          ),
          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => ListasGenericasExercicios(
            tituloTemaExercicio, 
            texto1, texto2, texto3, texto4, texto5, texto6,
            imagem1, imagem2, imagem3, imagem4, imagem5, imagem6,
          ))),// OnPressed genérico
        ),
      ),
      pularLinha(10),
      caixaDeTexto(texto, corExercicio, tamanhoLetra, TextAlign.center, fonte),
    ],
  );
}
