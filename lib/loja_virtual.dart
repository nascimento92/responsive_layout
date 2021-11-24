import 'package:flutter/material.dart';
import 'package:responsive_layout/widget/item_produto.dart';
import 'package:responsive_layout/widget/mobile_app_bar.dart';
import 'package:responsive_layout/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {

  int _ajustarVisualizacao(double largura){
    int colunas = 0;

    if(largura <= 600){
      colunas = 2;
    }
    else if(largura <= 960){
      colunas = 4;
    }
    else if(largura <= 1260){
      colunas = 6;
    }else{
      colunas = 8;
    }

    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {

        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(child: const MobileAppBar(), preferredSize: Size(largura,alturaBarra))
              : PreferredSize(child: const WebAppBar(), preferredSize: Size(largura,alturaBarra)),

          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
                crossAxisCount: _ajustarVisualizacao(largura),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  ItemProduto("Produto 1", "2.500,00", "p1.jpg"),
                  ItemProduto("Produto 2", "2.500,00", "p2.jpg"),
                  ItemProduto("Produto 3", "2.500,00", "p3.jpg"),
                  ItemProduto("Produto 4", "2.500,00", "p4.jpg"),
                  ItemProduto("Produto 5", "2.500,00", "p5.jpg"),
                  ItemProduto("Produto 6", "2.500,00", "p6.jpg"),
                  ItemProduto("Produto 1", "2.500,00", "p1.jpg"),
                  ItemProduto("Produto 2", "2.500,00", "p2.jpg"),
                  ItemProduto("Produto 3", "2.500,00", "p3.jpg"),
                  ItemProduto("Produto 4", "2.500,00", "p4.jpg"),
                  ItemProduto("Produto 5", "2.500,00", "p5.jpg"),
                  ItemProduto("Produto 6", "2.500,00", "p6.jpg"),
                ],
            ),
          ),
        );
      },
    );
  }
}
