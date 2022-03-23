// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:fl_actividades_fisicas/screens/screens.dart';


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
    
    



    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Actividades Fisicas',
        initialRoute: 'Home',
        routes: {
          'Home'  : ( _ ) => HomeScreen(),
          'Ficha' : ( _ ) => ActividadScreen(),
        },

    );
  }
}