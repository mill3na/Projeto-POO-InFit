import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Controller/Usuario.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';
import 'package:testeteladelogin/View/TelasGerais/TelaLogin.dart';

class TelaCadastro extends StatefulWidget {

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final formKey = GlobalKey<FormState>();

  final email1 = TextEditingController();
  final senha1 = TextEditingController();
  final nome1 = TextEditingController();
  final altura1 = TextEditingController();
  final peso1 = TextEditingController();
  final idade1 = TextEditingController();

  late String stringEmail;
  late String stringSenha;
  late String stringNome;
  late double alturaNumero;
  late double pesoNumero;
  late int idadeNumero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundo),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100,
            right: 40,
            left: 40,
          ),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                caixaDeTexto("Cadastro - InFIT", corPrimaria, 30, TextAlign.center, fonte),
                pularLinha(40),
                TextFormField(
                  controller: nome1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome',
                    hintText: 'Insira seu nome de usuário',
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Informe seu nome";
                    }
                    else if (value.length > 12) {
                      return "Seu nome deve possuir menos de 12 caracteres";
                    }
                    stringNome = value.toString();
                    return null;
                  },
                ),
                pularLinha(10),
                TextFormField(
                  controller: email1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
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
                      return "Informe o email corretamente";
                    }
                    stringEmail = email1.text;
                    return null;
                  },
                ),
                pularLinha(10),
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Informe sua senha";
                    } 
                    else if (value.length < 6) {
                      return "Sua senha deve possuir no mínimo 6 caracteres";
                    }
                    stringSenha = senha1.text;
                    return null;
                  },
                ),
                pularLinha(10),
                TextFormField(
                  controller: altura1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Altura',
                    hintText: 'Insira sua altura em centímetros',
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    alturaNumero = double.parse(altura1.text);
                    if (value == null || value.isEmpty) {
                      return "Informe sua Altura";
                    } 
                    else if (alturaNumero < 54 || alturaNumero > 272) {
                      return "Insira uma altura válida";
                    }
                    return null;
                  },
                ),
                pularLinha(10),
                TextFormField(
                  controller: peso1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Peso',
                    hintText: 'Insira seu peso em quilogramas',
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    pesoNumero = double.parse(peso1.text);
                    if (value == null || value.isEmpty) {
                      return "Informe seu peso";
                    } 
                    else if (pesoNumero < 2 || pesoNumero > 635) {
                      return "Insira um peso válido";
                    }
                    return null;
                  },
                ),
                pularLinha(10),
                TextFormField(
                  controller: idade1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Idade',
                    hintText: 'Insira sua idade',
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    idadeNumero = int.parse(idade1.text);
                    if (value == null || value.isEmpty) {
                      return "Informe sua idade";
                    } 
                    else if (idadeNumero < 0 || idadeNumero > 121) {
                      return "Insira uma idade válida";
                    }
                    else if (idadeNumero < 18) {
                      return "Só maiores de idade podem criar uma conta";
                    }
                    return null;
                  },
                ),
                pularLinha(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text("Retornar"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(corSecundaria)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                    ),
                    ElevatedButton(
                      child: Text("Concluir"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(corSecundaria)),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Usuario userM = Usuario();
                          userM.nome = stringNome;
                          userM.email = stringEmail;
                          userM.senha = stringSenha;
                          userM.altura = alturaNumero;
                          userM.peso = pesoNumero;
                          userM.idade = idadeNumero;
                          userM.chave = true;
                          Navigator.push(context,MaterialPageRoute(builder: (context) => TelaLogin(userM)));
                        }
                      },
                    ),
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