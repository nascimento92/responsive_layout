import 'package:flutter/material.dart';

/**
 * Aula 02 - Responsividade com Row & Column
 */

class ResponsividadeRowCol extends StatelessWidget {
  const ResponsividadeRowCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsividade')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(flex:1, child: Container(color: Colors.purple)),
                Expanded(flex:1, child: Container(color: Colors.pink)),
                Expanded(flex:1, child: Container(color: Colors.blue))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
