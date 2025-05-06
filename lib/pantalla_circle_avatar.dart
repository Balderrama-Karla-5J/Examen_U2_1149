import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xed6c3592),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Circle Avatar'),
      ),
      body: Stack(
        // clipBehavior helps to display profile pic like that
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset('assets/fondo.jpg'),
          const Positioned(
            top: 100,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/icono.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
