import 'package:flutter/material.dart';

void main() {

  var car = Car();
  car.carType();
  car.wheelsNum();

  // print("Hello sanghee");
  // runApp(const MyApp());
}

abstract class Vehicle{
int wheels = 10;
void wheelsNum();
}

class Car extends Vehicle{

  void carType(){
    print("land runner");
  }
  @override
  void wheelsNum(){
    print("The cat's wheels number id $wheels");
  }

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                                                                                                                                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
                                    _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
                            return Scaffold(
      appBar: AppBar(
                                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                        title: Text(widget.title),
      ),
      body: Center(
                        child: Column(
                                                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),     );
  }
}
