import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatelessWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tamanho dos textos")),
      body: Column(
        children: const [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
            "when an unknown printer took a galley of type and scrambled it to make a type "
            "specimen book. It has survived not only five centuries, but also the leap into "
            ,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10),
          AutoSizeText(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
            "when an unknown printer took a galley of type and scrambled it to make a type "
            "specimen book. It has survived not only five centuries, but also the leap into "
            ,
            style: TextStyle(fontSize: 30),

            //maxLines: 2,
            //minFontSize: 14,
            //overflow: TextOverflow.ellipsis,
            //overflowReplacement: Text('Não coube'),

            //minFontSize: 10,
            //maxLines: 2,
            //stepGranularity: 10,

            maxLines: 3,
            presetFontSizes: [30,22,10],
          ),
        ],
      ),
    );
  }
}
