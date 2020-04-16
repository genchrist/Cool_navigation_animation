import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 100,
            width: 600,
            child: Card(
              color: Colors.grey[900],
              elevation: 50,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pos = 0;
                        });
                      },
                      child: Stack(
                        fit: StackFit.passthrough,
                        children: [
                          Trapezoid(
                            cutLength: 20.0,
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Colors.white.withOpacity(0.2),
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft)),
                            ),
                          ),
                          Trapezoid(
                            cutLength: 20.0,
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Colors.white.withOpacity(0.2),
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight)),
                            ),
                          ),
                          Trapezoid(
                            cutLength: 20.0,
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Colors.white.withOpacity(0.2),
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
