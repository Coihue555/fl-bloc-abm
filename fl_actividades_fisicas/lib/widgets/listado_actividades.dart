import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_bloc_actividades/bloc/actividadlist_bloc.dart';

class ActividadesListTiles extends StatefulWidget {
  const ActividadesListTiles({Key? key}) : super(key: key);

  @override
  State<ActividadesListTiles> createState() => _ActividadesListTilesState();
}

class _ActividadesListTilesState extends State<ActividadesListTiles> {
  @override
  Widget build(BuildContext context) {
    final actividadListBloc = BlocProvider.of<ActividadlistBloc>(context, listen: false);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              child: BlocBuilder<ActividadlistBloc, ActividadlistState>(
                builder: (context, state) {
              
                    return ListView.builder(
                        itemCount: 10,
                        itemBuilder: (_, i) => Dismissible(
                              key: UniqueKey(),
                              background: Container(
                                color: Colors.red,
                              ),
                              onDismissed: (DismissDirection direction) {
                                BlocProvider.of<ActividadlistBloc>(context,
                                        listen: false)
                              },
                              child: ListTile(
                                  leading: Icon(Icons.sports_baseball_outlined,
                                      color: Theme.of(context).primaryColor),
                                  title:
                                      Text('algo'),
                                  subtitle: Text('algo'
                                  ),
                                  onTap: () {}),
                            ));
                  })
                  return const CircularProgressIndicator();
                },
              ),


            

            ),
          ),
          FloatingActionButton(
            elevation: 12,
            child: const Icon(
              Icons.add_circle_outline,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'Ficha');
            },
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
