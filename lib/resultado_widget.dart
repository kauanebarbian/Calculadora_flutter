import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget {
  final String resultado;

  const ResultadoWidget({
    super.key,
    required this.resultado,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Resultado: ",
          style: TextStyle(
            color: Colors.pink,
            fontSize: 25,
          ),
        ),
        Text(
          resultado,
          style: TextStyle(
            color: Colors.pink,
            fontSize: 17,
            shadows: [
              Shadow(
                color: const Color.fromARGB(255, 4, 0, 253),
                offset: const Offset(0, 2),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
