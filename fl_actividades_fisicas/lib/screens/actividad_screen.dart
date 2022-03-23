// ignore_for_file: avoid_print
import 'package:fl_actividades_fisicas/providers/providers.dart';
import 'package:fl_actividades_fisicas/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ActividadScreen extends StatefulWidget {
  @override
  State<ActividadScreen> createState() => _ActividadScreenState();
}

class _ActividadScreenState extends State<ActividadScreen> {
  @override
  Widget build(BuildContext context) {
    final elementoSeleccionado = Provider.of<ActividadListProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Edicion'),
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
                        initialValue:
                            elementoSeleccionado.datoSeleccionado.nombre,
                        onChanged: (value) {
                          elementoSeleccionado.datoSeleccionado.nombre = value;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        initialValue:
                            elementoSeleccionado.datoSeleccionado.descripcion,
                        keyboardType: TextInputType.emailAddress,
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
                            //Anda
                            setState(() {});
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          }),
                    ],
                  ),
                ))));
  }
}
