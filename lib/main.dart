// ignore_for_file: deprecated_member_use

// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(55, 255, 255, 0)),
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXzgYak3uJLmhKeHSk0km1nJoQ16cQ9XizVrzeUn8LFY5N53xgcUSN6-pJqBGk3NlxPNo&usqp=CAU"
                        //"assets/animals.png",
                        ),
                  )),
                ),
                Container(
                    width: 300,
                    height: 48,
                    margin: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(49, 105, 245, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.g_mobiledata_rounded,
                            size: 45,
                          ),
                          Text('Continuar con Google',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 14),
                              textAlign: TextAlign.center),
                        ],
                      ),
                      onPressed: () {},
                    )),
                Container(
                    width: 300,
                    height: 48,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(50, 79, 165, 1)),
                          //(0xFF324fa5)
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.facebook,
                            size: 35,
                          ),
                          Text('Continuar con Facebook',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                              textAlign: TextAlign.center),
                        ],
                      ),
                      onPressed: () {},
                    )),
                Container(
                    width: 300,
                    height: 48,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(255, 255, 255, 1)),
                          //(0xFFffffff)
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                side: const BorderSide(
                                    color: Color.fromRGBO(
                                        100, 104, 111, 1))), //(0xFF64686f)
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.mark_email_unread_sharp,
                            size: 35,
                            color:
                                Color.fromRGBO(100, 104, 111, 1), //(0xFF64686f)
                          ),
                          Text('Registrarse con e-mail',
                              style: TextStyle(
                                color: Color.fromRGBO(100, 104, 111, 1), //
                              ),
                              textAlign: TextAlign.center),
                        ],
                      ),
                      onPressed: () {},
                    )),
                Container(
                    width: 300,
                    height: 20,
                    margin: const EdgeInsets.only(top: 45),
                    child: FlatButton(
                      //style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: const Text(
                        'Entrar como invitado',
                        style: TextStyle(
                            color: Color.fromRGBO(252, 20, 96, 1),
                            fontSize: 13), //0xFFfc1460
                      ),
                      onPressed: () {},
                    )),
                Container(
                    width: 300,
                    height: 20,
                    margin: const EdgeInsets.only(top: 10),
                    child: FlatButton(
                      //style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: const Text(
                        'Entrar como vendedor',
                        style: //0xFF76a757
                            TextStyle(
                                color: Color.fromRGBO(118, 167, 87, 1),
                                fontSize: 13),
                      ),
                      onPressed: () {},
                    )),
                Container(
                  // width: 300,
                  // height: 48,
                  margin: const EdgeInsets.only(left: 75, right: 24, top: 40),
                  child: Center(
                    child: Row(
                      children: [
                        const Text("¿Ya tienes una cuenta?",
                            style: TextStyle(fontSize: 13),
                            textAlign: TextAlign.left),
                        FlatButton(
                          child: const Text(
                            'Iniciar sesión',
                            style: TextStyle(
                                //(0xFFfc1460)
                                color: Color.fromRGBO(252, 20, 96, 1),
                                fontSize: 13),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
