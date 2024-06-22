import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:piazza/entidades/recetas.dart';

Future<List<Receta>> fetchRecetas() async {
  CollectionReference recetasRef = FirebaseFirestore.instance.collection('recetas');
  QuerySnapshot querySnapshot = await recetasRef.get();
  List<Receta> recetas = querySnapshot.docs.map((doc) => Receta.fromFirestore(doc)).toList();
  return recetas;
}