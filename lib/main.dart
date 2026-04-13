import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // MaterialApp untuk dibuat pada ukuran android, dan apabila ingin membuat pada ukuran ios gunakan CupertinoApp
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(), // Wajiib memiliki properti home pada isi MaterialApp
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ElevatedButton(
        onPressed: () {
          debugPrint("=====> Tombol Ditekan");
        },
        child: Text("Tekan Saya"),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold( // Scaffold adalah tampilan semuanya dari atas sampai bawah, dan dibagi menjadi 2 yaitu top bar dan app bar
// //       appBar: AppBar(
// //         backgroundColor: Colors.deepOrange[700],
// //         title: Text("App Pertama"),
// //         actions: [
// //           Padding(
// //             padding: const EdgeInsets.only(right: 16.0),
// //             child: Icon(
// //               Icons.list
// //             ),
// //           )
// //         ],
// //       ),
// //       // body: Center(
// //       //   child: Text("Data"),
// //       // ),

// //       // body: Text("Ramadhan"), // 1. Widget Standalone = bisa berdiri sendiri, Ciri = hanya child saja

// //       // body: Center(
// //       //   child: Text("Ramadhan"), // 2. Widget Single = bisa memanggil widget lain tapi hanya satu
// //       // ),

// //       // body: Column(
// //       //   children: [
// //       //     Text("Ramadhan"), // 3. Widget Multi = bisa memanggil widget lain lebih dari satu Contohnya yaitu Row dan Column, Cirinya = ada children
// //       //     Icon(
// //       //       Icons.people
// //       //     )
// //       //   ],
// //       // ),

// //       // body: ElevatedButton(
// //       //   // onPressed: () {
          
// //       //   },
// //       //   onPressed: null,
// //       //   child: Text("Click"),
// //       // ), // Widget yang tidak boleh tidak ada isi nya pada properti yaitu button

// //       // body: 
// //       // // TextField(),
// //       // TextFormField(

// //       // ),

// //       // Statefull = adalah perubahan secara konstan
// //       // Stateless = adalah perubahan yang tidak secara konstan

// //       body: 
// //         ElevatedButton(onPressed: () {
// //           setState(() {
// //             debugPrint("=====> Tombol Ditekan");
// //           });
// //         },
// //         child: Text("Tekan Saya"),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ),
// //     );
// //   }
// // } // Widget Standalone, Single, Multi
