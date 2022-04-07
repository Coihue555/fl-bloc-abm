import 'package:fl_bloc_actividades/bloc/actividadlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fl_bloc_actividades/widgets/listado_actividades.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Actividades'),
      ),
      body: 
        // Container(
        //   padding: const EdgeInsets.only(bottom: 20, right: 5),
        //   child: const ActividadesListTiles()
        // ),
        Container(
          padding: const EdgeInsets.only(bottom: 20, right: 5),
          child: BlocBuilder<ActividadlistBloc, ActividadlistState>(
          builder: (context, state){
            return state.actividadesList.isNotEmpty
            ? const ActividadesListTiles()
            : const Center(
              child: Text('Aun no hay actividades'),
            );
          },
      ),
        ),
    );
  }
}
