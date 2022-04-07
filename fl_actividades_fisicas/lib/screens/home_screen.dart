import 'package:flutter/material.dart';
import 'package:fl_bloc_actividades/widgets/listado_actividades.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Actividades'),
      ),
      body: const Center(
         child: ActividadesListTiles(),
      ),
    );
  }
}