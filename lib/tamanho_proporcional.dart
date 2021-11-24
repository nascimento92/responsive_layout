import 'package:flutter/material.dart';

class TamanhoProporcional extends StatelessWidget {
  const TamanhoProporcional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tamanho Proporcional')),
      body: Container(
        color: Colors.orange,
        child: const FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          alignment: Alignment.topLeft,
          child: Text("Tamanho proporcional"),
        )),
    );
  }
}
