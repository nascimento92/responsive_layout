import 'package:flutter/material.dart';

/**
 * Aula 04 - OrientationBuilder
 */

class Orientacao extends StatelessWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orientacao')),
      body: OrientationBuilder(builder: (context, orientacao){
          /*return Container(
              child: orientacao == Orientation.portrait ? Text('Portrait') : Text('Landscape'),
          );*/
        return GridView.count(
          crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
          children: [
            Container(color: Colors.yellow),
            Container(color: Colors.green),
            Container(color: Colors.blue),
            Container(color: Colors.red),
            Container(color: Colors.pink),
            Container(color: Colors.greenAccent),
          ],
        );
      }),
    );
  }
}
