import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:testeteladelogin/Controller/Dados.dart';
import 'package:testeteladelogin/Model/metodosTela.dart';

// ignore: must_be_immutable
class TelaAtividadeFisicaGenerica extends StatefulWidget {

  String titulo;
  String image;

  TelaAtividadeFisicaGenerica(this.titulo, this.image);

  @override
  _TelaAtividadeFisicaGenericaState createState() => _TelaAtividadeFisicaGenericaState();
}

class _TelaAtividadeFisicaGenericaState extends State<TelaAtividadeFisicaGenerica> {
  CountDownController _controller = CountDownController();
  int _duration = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(corFundoExercicio),
      body: SingleChildScrollView(
        child: Container(padding: EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pularLinha(20),
                caixaDeTextoNegrito(widget.titulo, corExercicio, tamanhoLetraTitulos, TextAlign.center, fonte),
                pularLinha(20),
                Image.asset(widget.image),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                      child: CircularCountDownTimer(
                        duration: 60,
                        initialDuration: 0,
                        controller: _controller,
                        width: 140,
                        height: 140,
                        ringColor: Color(0xFF333333),
                        ringGradient: null,
                        fillColor: Color(corExercicio),
                        fillGradient: null,
                        backgroundGradient: null,
                        strokeWidth: 10.0,
                        strokeCap: StrokeCap.round,
                        textStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                        textFormat: CountdownTextFormat.S,
                        isReverse: false,
                        isReverseAnimation: false,
                        isTimerTextShown: true,
                        autoStart: false,
                      ),
                  ), pularLinha(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(corExercicio)),
                        ),
                        child: Text("  Começar  "),
                        onPressed: () => _controller.start(),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(corExercicio)),
                        ),
                        child: Text("    Pausar    "),
                        onPressed: () => _controller.pause(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(corExercicio)),
                      ),
                      child: Text(" Continuar "),
                      onPressed: () => _controller.resume(),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(corExercicio)),
                      ),
                      child: Text("Recomeçar"),
                      onPressed: () => _controller.restart(duration: _duration)
                    ),
                  ],
                ),
                pularLinha(20),
                botaoSemBordaSair('Retornar', corExercicio, context, fonte),
              ]
            ),
          ),
        ),
      ),
    );
  }
}