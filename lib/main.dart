import 'package:flutter/material.dart';
import 'second_page.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/' : (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        '/SecondPage' : (context) => DoubleScreen(),
      },
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
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('You have pushed the button this many times:'),
      //       ElevatedButton(
      //         onPressed: () {
      //           showDialog(
      //             context: context,
      //             builder: (context) => AlertDialog(
      //               title: const Text('Counter Value'),
      //               content: Text('The counter is currently at $_counter.'),
      //               actions: [
      //                 TextButton(
      //                   onPressed: () => Navigator.of(context).pop(),
      //                   child: const Text('OK'),
      //                 ),
      //               ],
      //             ),
      //           );
      //         },
      //         child: Text('Counter: $_counter'),
      //       ),
      //       const SizedBox(height: 24),
      //       ElevatedButton.icon(
      //         onPressed: () {
      //           Navigator.of(context).push(
      //             MaterialPageRoute(builder: (context) => const DoubleScreen()),
      //           );
      //         },
      //         // icon: const Icon(Icons.arrow_forward),
      //         label: const Text('Go to Form'),
      //       ),
      //     ],
      //   ),

      // body: ListView(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         color: Colors.blueGrey,
      //       ),
      //       height: 200,
      //       child: Text("Container")
      //     ),
      //     Container(height: 200, child: Text("Container")),
      //     Container(height: 200, child: Text("Container")),
      //   ],
      // ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text("Dodo"),
          ),
          const Text("Dodo"),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Center(
                  child: Text("Rama"),
                ),
              )
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const DoubleScreen()),
              // );
              Navigator.pushNamed(context, '/SecondPage');
            },
            child: const Text("Button")
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
