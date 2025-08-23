import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Playground(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Playground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(78),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Container(
                  width: 1646,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 224,
                              padding: const EdgeInsets.all(22),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              padding: const EdgeInsets.all(22),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                  Text(
                                    'Title',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(22),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(),
                                    ),
                                    Text(
                                      'Author',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(22),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(),
                                    ),
                                    Text(
                                      'Genre',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              padding: const EdgeInsets.all(22),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                  Text(
                                    'Progress',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(22),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(),
                                    ),
                                    Text(
                                      'Rating',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(22),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(),
                                    ),
                                    Text(
                                      'URL',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    '22/12/22',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 22,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    'Fire&Blood',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'George R.R Martin',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFBE7E9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Fantasy',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEDE7FB),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Fiction',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        '50',
                                        style: TextStyle(
                                          color: const Color(0xFF222222),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: 26,
                                        height: 26,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0.02,
                                              top: 0.02,
                                              child: Container(
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFFD3F8D2,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0.04,
                                              top: 26,
                                              child: Container(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFF24DA24,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFFF0BA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 2,
                                        children: [
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'https://abc.in',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    '22/10/2022',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 22,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    'Bridge of clay',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Markus Suzak',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEDE7FB),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Fiction',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        '75',
                                        style: TextStyle(
                                          color: const Color(0xFF222222),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: 26,
                                        height: 26,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0.02,
                                              top: 0.02,
                                              child: Container(
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFFD3F8D2,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0.04,
                                              top: 26,
                                              child: Container(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFF24DA24,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFFF0BA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 2,
                                        children: [
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'https://abc.in',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    '22/05/2022',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 22,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    'Do Epic Shit',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Ankur Warikoo',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFD3F8D2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Self-help',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                          color: const Color(0xFF222222),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: 26,
                                        height: 26,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0.02,
                                              top: 0.02,
                                              child: Container(
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFFD3F8D2,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0.04,
                                              top: 26,
                                              child: Container(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFF24DA24,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFFF0BA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 2,
                                        children: [
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'https://abc.in',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    '14/07/2020',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 22,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    '22/05/2022',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Jodi Picoult',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEDE7FB),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Fiction',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFFF0BA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Sappy',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                          color: const Color(0xFF222222),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: 26,
                                        height: 26,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0.02,
                                              top: 0.02,
                                              child: Container(
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFFD3F8D2,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0.04,
                                              top: 26,
                                              child: Container(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFF24DA24,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFFF0BA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 2,
                                        children: [
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'https://abc.in',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    '12/04/2021',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 22,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    'Atomic Habits ',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'James Clear',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFD3F8D2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Self-help',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                          color: const Color(0xFF222222),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: 26,
                                        height: 26,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0.02,
                                              top: 0.02,
                                              child: Container(
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFFD3F8D2,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0.04,
                                              top: 26,
                                              child: Container(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFF24DA24,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFFF0BA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 2,
                                        children: [
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'https://abc.in',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDADADA),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    '02/02/2022',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 22,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Text(
                                    'Dune',
                                    style: TextStyle(
                                      color: const Color(0xFF222222),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Frank Herbert',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 22,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFBE7E9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            'Sci-Fi',
                                            style: TextStyle(
                                              color: const Color(0xFF222222),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Container(
                              width: 224,
                              height: 82,
                              padding: const EdgeInsets.all(22),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCFCFC),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        '75',
                                        style: TextStyle(
                                          color: const Color(0xFF222222),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: 26,
                                        height: 26,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0.02,
                                              top: 0.02,
                                              child: Container(
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFFD3F8D2,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0.04,
                                              top: 26,
                                              child: Container(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                width: 25.96,
                                                height: 25.96,
                                                decoration: ShapeDecoration(
                                                  color: const Color(
                                                    0xFF24DA24,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFFF0BA),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 2,
                                        children: [
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                          Container(
                                            width: 17.31,
                                            height: 17.31,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1.20,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDADADA),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 82,
                                padding: const EdgeInsets.all(22),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFCFCFC),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'https://abc.in',
                                      style: TextStyle(
                                        color: const Color(0xFF222222),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
