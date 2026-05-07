import 'package:flutter/material.dart';

class WidgetBertingkatPage extends StatelessWidget {
  const WidgetBertingkatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget Bertingkat')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/60.jpg', width: 150, height: 150),
              const SizedBox(height: 20),
              const Text(
                'Ini adalah komeng ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
