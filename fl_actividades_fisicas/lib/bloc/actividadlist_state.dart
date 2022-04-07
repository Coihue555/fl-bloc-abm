part of 'actividadlist_bloc.dart';

@immutable
abstract class ActividadlistState {
  final ActividadModel? actividad;
  final bool isWorking;
  final List<ActividadModel> actividadesList;
  final String error;
  final String accion;

  const ActividadlistState({
    this.actividad,
    this.isWorking = false,
    this.actividadesList =  const [],
    this.error = '',
    this.accion = ''
  });

}

class ActividadlistInitial extends ActividadlistState {
  const ActividadlistInitial(): super();

}
