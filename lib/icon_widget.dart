import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatelessWidget {
  final VoidCallback onPressedSoma;
  final VoidCallback onPressedSubtracao;
  final VoidCallback onPressedMultiplicacao;
  final VoidCallback onPressedDivisao;

  const IconWidget({
    super.key,
    required this.onPressedSoma,
    required this.onPressedSubtracao,
    required this.onPressedMultiplicacao,
    required this.onPressedDivisao,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressedSoma,
          icon: const Icon(Icons.add),
          color: Colors.deepPurple,
          iconSize: 30,
        ),
        IconButton(
          onPressed: onPressedSubtracao,
          icon: const Icon(Icons.remove),
          color: Colors.purple,
          iconSize: 30,
        ),
        IconButton(
          onPressed: onPressedMultiplicacao,
          icon: const Icon(Icons.close),
          color: Colors.pinkAccent,
          iconSize: 30,
        ),
        IconButton(
          onPressed: onPressedDivisao,
          icon: const Icon(FontAwesomeIcons.divide),
          color: Colors.deepPurple,
          iconSize: 30,
        ),
      ],
    );
  }
}
