import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Controller/Usuario.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

import 'TelaMenu.dart';

// ignore: must_be_immutable
class TelaLogin extends StatefulWidget {

  Usuario usuario = Usuario();

  TelaLogin(this.usuario);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  final formKey = GlobalKey<FormState>();
  final email1 = TextEditingController();
  final senha1 = TextEditingController();

  logar() {
    setState(() {
      widget.usuario.chave = true;
      Navigator.push(context,MaterialPageRoute(builder: (context) => TelaMenu(widget.usuario)));
    });
  }

  logarConvidado() {
    setState(() {
      Usuario userC = Usuario();
      userC.chave = false;
      Navigator.push(context,MaterialPageRoute(builder: (context) => TelaMenu(userC)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundo),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 180, right: 40, left: 40,),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                caixaDeTexto("Login - InFIT", corPrimaria, 30, TextAlign.center, fonte), pularLinha(40),               
                TextFormField(
                  controller: email1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: 'Insira seu endereço de Email',
                    labelStyle: TextStyle(
                      color: Color(corPrimaria),
                    ),
                    hintStyle: TextStyle(
                      color: Color(corPrimaria),
                    ),
                    focusedBorder: OutlineInputBorder( // borda quando esta selecionada
                      borderSide: BorderSide(color: Color(corPrimaria)), // Cor da borda
                      borderRadius: BorderRadius.all(Radius.circular(10),), // Raio da borda
                    ),
                    enabledBorder: OutlineInputBorder( // borda quando nao esta selecionada
                      borderSide: BorderSide(color: Color(corPrimaria)), // Cor da borda
                      borderRadius: BorderRadius.all(Radius.circular(10),), // Raio da borda
                    ), 
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Insira seu email";
                    }
                    else if (value != widget.usuario.email)
                    {
                      return 'Email incorreto';
                    }
                    return null;
                  },
                ), pularLinha(20),
                TextFormField(
                  controller: senha1,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                    hintText: 'Insira sua senha',
                    labelStyle: TextStyle(
                      color: Color(corPrimaria),
                    ),
                    hintStyle: TextStyle(
                      color: Color(corPrimaria),
                    ),
                    focusedBorder: OutlineInputBorder( // borda quando esta selecionada
                      borderSide: BorderSide(color: Color(corPrimaria)), // Cor da borda
                      borderRadius: BorderRadius.all(Radius.circular(10),), // Raio da borda
                    ),
                    enabledBorder: OutlineInputBorder( // borda quando nao esta selecionada
                      borderSide: BorderSide(color: Color(corPrimaria)), // Cor da borda
                      borderRadius: BorderRadius.all(Radius.circular(10),), // Raio da borda
                    ),  
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Insira sua senha";
                    }
                    else if (value.length < 6) {
                      return "Sua senha deve possuir no mínimo 6 caracteres";
                    }
                    else if (value != widget.usuario.senha) {
                      print(widget.usuario.senha);
                      return 'Senha incorreta';
                    }
                    return null;
                  },
                ), pularLinha(20),
                ElevatedButton(
                  child: Text("Entrar"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(corSecundaria)),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      logar();
                    }
                  },
                ), pularLinha(20),
                ElevatedButton(
                  child: Text("Entrar como Convidado"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(corSecundaria)),
                  ),
                  onPressed: () {
                    logarConvidado();
                  },
                ), pularLinha(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    caixaDeTexto("Não possui conta?", corPrimaria, tamanhoLetra, TextAlign.center, fonte),
                    botaoSemBorda("Registre-se", "cadastro", corPrimaria, context, fonte)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}