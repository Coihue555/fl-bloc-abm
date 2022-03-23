import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fl_actividades_fisicas/screens/screens.dart';
import 'package:fl_actividades_fisicas/models/actividad_model.dart';
import 'package:fl_actividades_fisicas/providers/providers.dart';


class ActividadesListTiles extends StatefulWidget {
  const ActividadesListTiles({Key? key}) : super(key: key);

  @override
  State<ActividadesListTiles> createState() => _ActividadesListTilesState();
}

class _ActividadesListTilesState extends State<ActividadesListTiles> {
  @override
  Widget build(BuildContext context) {
    final actividadListProvider = Provider.of<ActividadListProvider>(context, listen: false);

    return FutureBuilder<List<ActividadModel>>(
      //future: actividadListProvider.cargarTodos(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, i) => Dismissible(
                    key: UniqueKey(),
                    background: Container(
                      color: Colors.red,
                    ),
                    onDismissed: (DismissDirection direction) {
                      Provider.of<ActividadListProvider>(context, listen: false)
                          .borrarDatoById(snapshot.data![i].id);
                    },
                    child: ListTile(
                        leading: Icon(Icons.home,
                            color: Theme.of(context).primaryColor),
                        title: Text(snapshot.data![i].id.toString() +
                            ' ' +
                            snapshot.data![i].nombre.toString()),
                        subtitle: Text(snapshot.data![i].descripcion.toString()),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          actividadListProvider.getDatosById(snapshot.data![i].id!);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ActividadScreen()),
                          );
                        }),
                  ));
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
