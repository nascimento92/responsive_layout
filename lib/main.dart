import 'package:flutter/material.dart';
import 'package:responsive_layout/orientacao.dart';
import 'package:responsive_layout/responsividade_media_query.dart';
import 'package:responsive_layout/responsividade_row_col.dart';
import 'package:responsive_layout/responsividade_wrape.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: ResponsividadeMediaQuery(),
      //home: ResponsividadeRowCol(),
      //home: ResponsividadeWrape(),
      home: Orientacao(),
    );
  }
}
