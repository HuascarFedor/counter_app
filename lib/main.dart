import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Counter(),
  ));
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _cont = 0;

  void _incrementCounter() {
    setState(() {
      _cont++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Stategul Widget'),
      ),
      
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,    
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue,
                    Colors.green
                  ],
                  stops: [0.0, 1.0],
                ),
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text('Veces que presionaste el botón: '),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image:NetworkImage("https://cdn.pixabay.com/photo/2024/02/15/15/29/crocus-8575610_1280.jpg"),
                  fit: BoxFit.cover,
                ),
                //color: Colors.lime,
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                  /*
                  BoxShadow(
                    color: Colors.yellow,
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 4),
                  ),*/
                ],
              ),
              child: Text(
                '$_cont',
                style: const TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(),
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
