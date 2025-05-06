import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyStatufulWidget(
          number: 0), // Puedes iniciar con cualquier número
    );
  }
}

class MyStatufulWidget extends StatefulWidget {
  final int number;
  const MyStatufulWidget({Key? key, required this.number}) : super(key: key);

  @override
  _MyStatufulWidgetState createState() {
    print('Number: $number CreateState');
    return _MyStatufulWidgetState();
  }
}

class _MyStatufulWidgetState extends State<MyStatufulWidget> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    number = widget.number;
    print('Number: ${widget.number} InitState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} DidChangeDependencies');
  }

  @override
  void didUpdateWidget(MyStatufulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} DidUpdateWidget');

    if (oldWidget.number != widget.number) {
      print('Number has changed');
    }
  }

  @override
  void deactivate() {
    print('Number: ${widget.number} Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Number: ${widget.number} Dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Number: $number Build');
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: 350,
              child: TextButton(
                child: Text(
                  number.toString(),
                  style: const TextStyle(fontSize: 80),
                ),
                onPressed: () {
                  setState(() {
                    print('Number: ${widget.number} SetState');
                    number++;
                  });
                },
              ),
            ),
            ElevatedButton(
              child: const Text('First Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FirstPage(numberFirst: number)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  final int numberFirst;

  const FirstPage({Key? key, required this.numberFirst}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: Text('Received number: $numberFirst',
            style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
