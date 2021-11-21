import 'package:flutter/material.dart';

/**
 * Aula 03 - Responsividade com Wrape
 */

class ResponsividadeWrape extends StatelessWidget {
  const ResponsividadeWrape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double altura = 100;
    double largura = 200;

    return Scaffold(
      appBar: AppBar(title: Text('Wrape')),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 20,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.green,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.purple,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.blue,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.red,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
