import 'package:cloud_firestore/cloud_firestore.dart';

class Receta {
  final String fecha;
  final String foto;
  final List<String> ingredientes;
  final List<String> preparacion;
  final String tiempo;

  Receta({
    required this.fecha,
    required this.foto,
    required this.ingredientes,
    required this.preparacion,
    required this.tiempo,
  });

  factory Receta.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Receta(
      fecha: data['fecha'] ?? '',
      foto: data['foto'] ?? 'https://www.elsabor.com.ec/wp-content/uploads/2022/02/arroz-pollo.jpg',
      ingredientes: List<String>.from(data['ingredientes'] ?? []),
      preparacion: List<String>.from(data['preparacion'] ?? []),
      tiempo: data['tiempo'] ?? '',
    );
  }
}
