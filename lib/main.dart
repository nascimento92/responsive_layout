import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_layout/diferentes_tamanhos.dart';
import 'package:responsive_layout/loja_virtual.dart';
import 'package:responsive_layout/orientacao.dart';
import 'package:responsive_layout/regras_layout.dart';
import 'package:responsive_layout/responsividade_media_query.dart';
import 'package:responsive_layout/responsividade_row_col.dart';
import 'package:responsive_layout/responsividade_wrape.dart';
import 'package:responsive_layout/tamanho_proporcional.dart';
import 'package:responsive_layout/tamanho_textos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DevicePreview(builder: (context){
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,

        //devide preview
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),

        //home: ResponsividadeMediaQuery(),
        //home: ResponsividadeRowCol(),
        //home: ResponsividadeWrape(),
        //home: Orientacao(),
        //home: RegrasLayout()
        home: LojaVirtual(),
        //home: TamanhoTextos(),
        //home: TamanhoProporcional(),
        //home: DiferentesTamanhos(),
      );
    });
  }
}
