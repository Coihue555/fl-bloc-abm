import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:fl_bloc_actividades/models/actividad_model.dart';

part 'actividadlist_event.dart';
part 'actividadlist_state.dart';

class ActividadlistBloc extends Bloc<ActividadlistEvent, ActividadlistState> {
  ActividadlistBloc() : super(ActividadlistInitial()) {
    on<ActividadlistEvent>((event, emit) {
      
    });

    on<ObtenerListaEvent>((event, emit) {
      
    });

    on<NuevaActividadEvent>((event, emit) {
      
      final actividades = [...state.user!.actividades, event.profession];
      emit(UserSetState(state.user!.copyWith(profesiones: professions)));

    });

    on<ModificarActividadEvent>((event, emit) {
      
    });

    on<GuardarActividadEvent>((event, emit) {
      
    });

    on<BorrarActividadEvent>((event, emit) {
      
    });

    on<ValidarActividadEvent>((event, emit) {
      
    });

  }
}
