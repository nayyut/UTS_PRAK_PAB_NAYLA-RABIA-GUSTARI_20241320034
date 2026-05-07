import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Navigasi',
      initialRoute: '/',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 70),
            backgroundColor: const Color.fromARGB(255, 114, 118, 118),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/Laptop': (context) =>
            const MenuPage(menuTitle: 'Laptop', icon: Icons.laptop_outlined),
        '/Resi': (context) =>
            const MenuPage(menuTitle: 'Resi', icon: Icons.receipt_long),
        '/Kabel': (context) =>
            const MenuPage(menuTitle: 'Kabel', icon: Icons.cable),
        '/Papan Ketik': (context) =>
            const MenuPage(menuTitle: 'Papan Ketik', icon: Icons.keyboard),
        '/Setuju': (context) =>
            const MenuPage(menuTitle: 'Setuju', icon: Icons.handshake),
        '/Tidak Setuju': (context) =>
            const MenuPage(menuTitle: 'Tidak Setuju', icon: Icons.back_hand),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        padding: const EdgeInsets.all(20.0),
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Laptop');
            },
            icon: const Icon(Icons.laptop_outlined),
            label: const Text('Laptop'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Resi');
            },
            icon: const Icon(Icons.receipt_long),
            label: const Text('Resi'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Kabel');
            },
            icon: const Icon(Icons.cable),
            label: const Text('Kabel'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Papan Ketik');
            },
            icon: const Icon(Icons.keyboard),
            label: const Text('Papan Ketik'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Setuju');
            },
            icon: const Icon(Icons.handshake),
            label: const Text('Setuju'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Tidak Setuju');
            },
            icon: const Icon(Icons.back_hand),
            label: const Text('Tidak Setuju'),
          ),
        ],
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final String menuTitle;
  final IconData icon;

  const MenuPage({
    super.key,
    required this.menuTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(menuTitle)),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(icon),
          label: const Text('Kembali'),
        ),
      ),
    );
  }
}