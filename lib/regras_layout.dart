import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({Key? key}) : super(key: key);

  @override
  _RegrasLayoutState createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {

    MaterialColor cor = Colors.grey;

    return Scaffold(
      appBar: AppBar(title: Text('Layout Builder')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: cor,
        child: LayoutBuilder(
          builder: (context, constraint) {
            var largura = constraint.maxWidth;
            //return Container(child: Text('Gabriel Nascimento - Largura: $largura'));
            if(largura < 600){
              return Text('Tela pequena - Largura: $largura'); //tela celular
            }else if (largura < 960){ //celular maior e tablet
              return Text('Tela Média - Largura: $largura');
            }else{ //demais telas
              return Text('Tela Grande - Largura: $largura');
            }
          },
        ),
      ),
    );
  }
}
