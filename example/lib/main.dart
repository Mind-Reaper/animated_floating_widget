import 'package:floating_widget/floating_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FloatingWidgetExample(),
    );
  }
}

class FloatingWidgetExample extends StatelessWidget {
  const FloatingWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Floating Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: FloatingWidget(
            verticalSpace: 20,
            duration: const Duration(
              seconds: 3,
            ),
            reverseDuration: const Duration(seconds: 1),
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xff27374D),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Floating widget",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
