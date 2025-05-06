import 'package:flutter/material.dart';
import 'package:balderrama1149/pantalla_inicio.dart';
import 'package:balderrama1149/pantalla_single_child_scroll_view.dart';
import 'package:balderrama1149/pagina_date_picker.dart';
import 'package:balderrama1149/pagina_stateful_widget.dart'; // Importación de la clase MyStatufulWidget
import 'package:balderrama1149/pantalla_stepper.dart';
import 'package:balderrama1149/pantalla_circle_avatar.dart';
import 'package:balderrama1149/pantalla_cupertino.dart';
import 'package:balderrama1149/pantalla_listener.dart';
import 'package:balderrama1149/pantalla_snack_bar.dart';

void main() => runApp(MiMapp());

class MiMapp extends StatelessWidget {
  const MiMapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mapp ',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/pantallasingle': (context) => const MySingleChildScrollView(),
        '/pantalladatep': (context) => const MyDatePicker(),
        '/pantallastate': (context) =>
            const MyStatufulWidget(number: 0), // Asegúrate de pasar el número
        '/pantallastepper': (context) => const MyStepper(),
        '/pantallacircle': (context) => const MyCircleAvatar(),
        '/pantallacupertino': (context) => const MyCupertinoSearch(),
        '/pantallalistener': (context) => const MyListener(),
        '/pantallasnack': (context) => const MySnackBar(),
      },
    );
  }
}
