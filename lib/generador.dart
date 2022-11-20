import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'main.dart';

class GenerarQR extends StatefulWidget {
  const GenerarQR({super.key});

  @override
  State<GenerarQR> createState() => _GenerarQRState();
}

class _GenerarQRState extends State<GenerarQR> {
  TextEditingController urlcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tu codigo QR'),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlcontroller.text.isNotEmpty)
                QrImage(
                  data: urlcontroller.text,
                  size: 300,
                  backgroundColor: Colors.white,
                ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: urlcontroller,
                    decoration: InputDecoration(
                        hintText: 'Ingresa tu correo',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Ingresa tu Correo'),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text('Generar QR')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        });
                      },
                      child: const Text('Guardar'))
                ],
              )
            ],
          )),
        ));
  }
}
