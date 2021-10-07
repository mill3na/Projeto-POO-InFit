import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Controller/Usuario.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaPerfil extends StatelessWidget {

  Usuario usuario = Usuario();

  TelaPerfil(this.usuario);

  Widget textfield({@required hintText}) {
    return Material(
      elevation: tamanhoSombra,
      shadowColor: Color(corSombra),
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 2,
            color: Color(corPrimaria),
            fontWeight: FontWeight.bold,
          ),
          fillColor: Color(corFundo),
          filled: true,
          enabledBorder: OutlineInputBorder( // borda quando nao esta selecionada
            borderSide: BorderSide(color: Color(corPrimaria)), // Cor da borda
            borderRadius: BorderRadius.all(Radius.circular(10),), // Raio da borda
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundo),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(corPrimaria),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                padding: EdgeInsets.only(right: 40, left: 40, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfield(hintText: "NOME: "+usuario.nome,),
                    textfield(hintText: "EMAIL: "+usuario.email,),
                    textfield(hintText: "ALTURA: "+usuario.altura.toString(),),
                    textfield(hintText: "PESO: "+usuario.peso.toString(),),
                    textfield(hintText: "IDADE: "+usuario.idade.toString(),),
                  ],
                ),
              )
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              caixaDeTexto("MEU PERFIL", corDoTexto, tamanhoLetraTitulos, TextAlign.center, fonte),
              pularLinha(10), 
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(corFundo), width: 5),  
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/imagens/perfil/profile.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(corPrimaria);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
