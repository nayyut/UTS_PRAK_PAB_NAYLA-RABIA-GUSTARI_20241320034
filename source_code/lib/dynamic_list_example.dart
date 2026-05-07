import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dynamic List Example',
      home: DynamicListExample(),
    );
  }
}

class DynamicListExample extends StatefulWidget {
  const DynamicListExample({super.key});

  @override
  DynamicListExampleState createState() => DynamicListExampleState();
}

class DynamicListExampleState extends State<DynamicListExample> {
  List<String> items = [
    'Nadya Wahida Gustari',
    'Navisa Tsania Gustari',
    'Nayla Rabia Gustari',
  ];
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose(); // penting!
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dynamic List Example')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(items[index]));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Add New Item',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (textEditingController.text.isNotEmpty) {
                      setState(() {
                        items.add(textEditingController.text);
                        textEditingController.clear();
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
