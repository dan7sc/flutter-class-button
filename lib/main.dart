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
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
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

            // RaisedButton(
            //   onPressed: _incrementCounter,
            //   child: Text("Adicionar"),
            //   color: Colors.blue,
            // ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _incrementCounter,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.add),
                          Text("Adicionar"),
                          Container(
                            width: 8.0,
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            bottomLeft: Radius.circular(16.0),
                            topRight: Radius.circular(4.0),
                            bottomRight: Radius.circular(4.0),
                          ),
                        ),
                        elevation: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // IconButton(
            //   onPressed: _incrementCounter,
            //   // iconSize: 50,
            //   icon: Container(
            //     child: Padding(
            //       padding: const EdgeInsets.all(2.0),
            //       child: Center(
            //         child: Icon(Icons.add),
            //       ),
            //     ),
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //   ),
            // ),

            // Material(
            //   color: Colors.red,
            //   borderRadius: BorderRadius.circular(30),
            //   child: InkWell(
            //     child: Container(
            //       height: 40.0,
            //       width: 120.0,
            //       child: Center(
            //         child: Text("Adicionar"),
            //       ),
            //     ),
            //     hoverColor: Colors.grey,
            //     highlightColor: Colors.white,
            //     splashColor: Colors.yellow,
            //     focusColor: Colors.blue,
            //     onTap: _incrementCounter,
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            // ),

            // GestureDetector(
            //   onTap: () {
            //     _incrementCounter();
            //   },
            //   onDoubleTap: () {
            //     _incrementCounter();
            //     _incrementCounter();
            //   },
            //   // onLongPress: _incrementCounter,
            //   onLongPressEnd: (_) => _incrementCounter(),
            //   child: AnimatedContainer(
            //     height: _counter % 2 == 0 ? 25.0 : 150.0,
            //     width: _counter % 2 == 0 ? 25.0 : 150.0,
            //     decoration: BoxDecoration(
            //       color: _counter % 2 == 0
            //         ? Colors.red
            //         : Colors.red.withOpacity(0.3),
            //       borderRadius: _counter % 2 == 0
            //         ? BorderRadius.circular(90)
            //         : BorderRadius.circular(16),
            //     ),
            //     duration: Duration(seconds: 2),
            //     curve:
            //       _counter % 2 == 0 ? Curves.easeInOut: Curves.easeInOut,
            //   ),
            // ),
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
