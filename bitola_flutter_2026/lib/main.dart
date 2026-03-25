import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Bitola', home: App()));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  double corrente = 0.0;
  double distancia = 0.0;

  double bitola110 = 0.0;
  double bitola220 = 0.0;
  String? resultado;

  void calcular() {
    bitola110 = (2 * corrente * distancia) / 294.64;
    bitola220 = (2 * corrente * distancia) / 510.4;

    resultado =
        "Bitola para 110V: ${bitola110.toStringAsFixed(2)} mm²\nBitola para 220V: ${bitola220.toStringAsFixed(2)} mm²";
    setState(() {});
  }

  void alert(BuildContext context, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content: Text(msg),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromRGBO(0, 0, 0, 0.3),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20.0,
            children: [
              Text(
                "Calculadora de Bitola",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 7, 0, 100),
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Corrente elétrica (A)"),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  corrente = double.tryParse(value) ?? 0.0;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Distância (m)"),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  distancia = double.tryParse(value) ?? 0.0;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  calcular();
                  alert(context, "$resultado");
                },
                child: Text("Calcular"),
              ),
              Text("Bitola para 110V: ${bitola110.toStringAsFixed(2)} mm²"),
              Text("Bitola para 220V: ${bitola220.toStringAsFixed(2)} mm²"),
            ],
          ),
        ),
      ),
    );
  }
}
