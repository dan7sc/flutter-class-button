import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              onTap: () {
                _incrementCounter();
              },
              onDoubleTap: () {
                _incrementCounter();
                _incrementCounter();
              },
              // onLongPress: _incrementCounter,
              onLongPressEnd: (_) => _incrementCounter(),
              child: AnimatedContainer(
                height: _counter % 2 == 0 ? 25.0 : 150.0,
                width: _counter % 2 == 0 ? 25.0 : 150.0,
                decoration: BoxDecoration(
                  color: _counter % 2 == 0
                    ? Colors.red
                    : Colors.red.withOpacity(0.3),
                  borderRadius: _counter % 2 == 0
                    ? BorderRadius.circular(90)
                    : BorderRadius.circular(16),
                ),
                duration: Duration(seconds: 2),
                curve:
                  _counter % 2 == 0 ? Curves.easeInOut: Curves.easeInOut,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
