import 'package:flutter/material.dart';
import 'package:piazza/screems/recetas/recetas_list.dart';

class RecetasScreens extends StatelessWidget {
  const RecetasScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Image.network("https://pollocolombiano.com/wp-content/uploads/2023/09/arroz-con-pollo-completo-1.png"),),
    );
  }
}