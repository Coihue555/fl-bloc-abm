import 'package:fl_actividades_fisicas/providers/db_provider.dart';
import 'package:flutter/material.dart';

class ActividadListProvider extends ChangeNotifier{
  List<ActividadModel> datos = [];
  ActividadModel datoSeleccionado = ActividadModel(nombre: '', descripcion: '');

  Future<ActividadModel> nuevaActividad(String nombre, String descripcion ) async {
    final nuevoDato =  ActividadModel(nombre: nombre, descripcion: descripcion);
    final id = await DBProvider.db.nuevoDato(nuevoDato);
    //asignar el ID de la base de datos al modelo
    nuevoDato.id = id;

    
      this.datos.add(nuevoDato);
      notifyListeners();
    
    return nuevoDato;
  }



  Future<List<ActividadModel>> cargarTodos() async {
    final datos = await DBProvider.db.getTodos();
    this.datos = [...datos!];
    notifyListeners();
    return datos;


  }

  cargarDatosByNombre(String nombre) async {
    this.datoSeleccionado = await DBProvider.db.getDatosByNombre(nombre);
    
    notifyListeners();
  }

  borrarLista() async {
    await DBProvider.db.deleteAllActividades();
    this.datos = [];
    notifyListeners();
  }

  borrarDatoById( int? id) async {
    await DBProvider.db.deleteDato(id!);
    cargarTodos();
  }

  Future<ActividadModel?> getDatosById(int id) async {
    datoSeleccionado = await DBProvider.db.getDatosById(id);
    
    notifyListeners();
  }


  

}