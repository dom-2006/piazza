import 'package:flutter/material.dart';
import 'package:piazza/api/fetch_recetas.dart';
import 'package:piazza/entidades/recetas.dart';

class RecetasList extends StatelessWidget {
  const RecetasList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Receta>>(
      future: fetchRecetas(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text('No hay recetas disponibles');
        }

        List<Receta> recetas = snapshot.data!;

        return ListView.builder(
          itemCount: recetas.length,
          itemBuilder: (context, index) {
            Receta receta = recetas[index];
            return ListTile(
              title: Text(receta.fecha),
              subtitle: Text(receta.tiempo),
              leading:
                   Expanded(child: Image.network("https://pollocolombiano.com/wp-content/uploads/2023/09/arroz-con-pollo-completo-1.png")),
            );
          },
        );
      },
    );
  }
}
