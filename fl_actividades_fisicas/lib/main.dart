// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_bloc_actividades/bloc/actividadlist_bloc.dart';
import 'package:fl_bloc_actividades/screens/screens.dart';


void main() async {
  
  runApp(MyApp())

  ;}

class MyApp extends StatefulWidget {
  
  
  
  @override
  State<MyApp> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [BlocProvider(create: ( _ ) => ActividadlistBloc() )],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Actividades Fisicas',
            initialRoute: 'Home',
            routes: {
              'Home'  : ( _ ) => const HomeScreen(),
              'Ficha' : ( _ ) => ActividadScreen(),
            },
          
        ),
    );
  }
}