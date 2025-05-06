import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Inicio Balderrama',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallasingle');
              },
              child: const Text(
                'Ver Single Child Scroll View',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalladatep');
              },
              child: const Text(
                'Ver Date Picker',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallastate');
              },
              child: const Text(
                'Ver Stateful',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallastepper');
              },
              child: const Text(
                'Ver Stepper',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallacircle');
              },
              child: const Text(
                'Ver Circle',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallacupertino');
              },
              child: const Text(
                'Ver Cupertino',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallalistener');
              },
              child: const Text(
                'Ver Listener',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallasnack');
              },
              child: const Text(
                'Ver snack',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
