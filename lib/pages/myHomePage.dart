import 'package:flutter/material.dart';
import 'package:primeira_aplicacao_flutter/icon_widget.dart';
import 'package:primeira_aplicacao_flutter/resultado_widget.dart';
import 'package:primeira_aplicacao_flutter/widgets/input_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var valor1InputController = TextEditingController();
  var valor2InputController = TextEditingController();

  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputWidget(
              title: 'campo 1',
              controller: valor1InputController,
            ),
            InputWidget(
              title: 'campo 2',
              controller: valor2InputController,
            ),
            IconWidget(
              onPressedSoma: exibeSoma,
              onPressedSubtracao: exibeSubtracao,
              onPressedMultiplicacao: exibeMultiplicacao,
              onPressedDivisao: exibeDivisao,
            ),
            ResultadoWidget(resultado: resultado),
          ],
        ),
      ),
    );
  }

  void exibeSoma() {
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;
    setState(() {
      resultado = (valor1 + valor2).toString();
    });
  }

  void exibeSubtracao() {
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;
    setState(() {
      resultado = (valor1 - valor2).toString();
    });
  }

  void exibeMultiplicacao() {
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 0;
    setState(() {
      resultado = (valor1 * valor2).toString();
    });
  }

  void exibeDivisao() {
    var valor1 = double.tryParse(valor1InputController.text) ?? 0;
    var valor2 = double.tryParse(valor2InputController.text) ?? 1;
    setState(() {
      resultado = (valor1 / valor2).toStringAsFixed(2);
    });
  }
}
