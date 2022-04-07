// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_bloc_actividades/bloc/actividadlist_bloc.dart';



class ActividadScreen extends StatefulWidget {
  @override
  State<ActividadScreen> createState() => _ActividadScreenState();
}

class _ActividadScreenState extends State<ActividadScreen> {
  @override
  Widget build(BuildContext context) {
    final elementoSeleccionado = BlocProvider.of<ActividadlistBloc>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Nueva Actividad'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Nombre',
                        ),
                        initialValue:'',
                        onChanged: (value) {
                          elementoSeleccionado.datoSeleccionado.nombre = value;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Descripcion',
                        ),
                        initialValue:'',
                        onChanged: (value) {
                          elementoSeleccionado.datoSeleccionado.descripcion = value;
                        },
                      ),
                      
                      
                      ElevatedButton(
                          child: const SizedBox(
                              width: double.infinity,
                              child: Center(child: Text('Guardar'))),
                          onPressed: () {
                            elementoSeleccionado.nuevaActividad(
                                elementoSeleccionado.datoSeleccionado.nombre,
                                elementoSeleccionado.datoSeleccionado.descripcion);
                            setState(() {});
                            Navigator.pushReplacementNamed(context, 'Home');
                            
                          }),
                    ],
                  ),
                ))));
  }
}

