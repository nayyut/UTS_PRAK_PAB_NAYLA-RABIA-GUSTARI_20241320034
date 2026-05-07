import 'package:flutter/material.dart';

class UserInputExample extends StatelessWidget {
  const UserInputExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // ❗ Hapus 'const' di sini
      title: 'User Input Example',
      home: const UserInputPage(),  // ✅ UserInputPage bisa const karena konstruktornya const
    );
  }
}

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  UserInputPageState createState() => UserInputPageState();
}

class UserInputPageState extends State<UserInputPage> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Input Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Enter some text',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // ✅ Spacer
            Text(  // ✅ Tampilkan input user
              'You typed: $_inputText',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}