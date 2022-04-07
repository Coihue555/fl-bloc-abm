part of 'actividadlist_bloc.dart';

@immutable
abstract class ActividadlistEvent {

}

class ObtenerListaEvent extends ActividadlistEvent{

}

class NuevaActividadEvent extends ActividadlistEvent{
   final int? id;
   final String? nombre;
   final String descripcion;

  NuevaActividadEvent(this.id, this.nombre, this.descripcion);

}

class ModificarActividadEvent extends ActividadlistEvent{

}

class GuardarActividadEvent extends ActividadlistEvent{

}

class BorrarActividadEvent extends ActividadlistEvent{

}

class ValidarActividadEvent extends ActividadlistEvent{
  
}