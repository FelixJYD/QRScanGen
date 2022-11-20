import 'package:flutter/material.dart';
import 'package:qr3/scaner.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'generador.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Tu codigo QR',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tu codigo QR'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => GenerarQR()));
              });
            },
            child: const Text('Consulta tu Codigo')),
        ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QRViewExample()));
              });
            },
            child: const Text('Escanea tu Codigo'))
      ])),
    );
  }
}
