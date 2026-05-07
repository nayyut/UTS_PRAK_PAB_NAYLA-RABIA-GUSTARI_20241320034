import 'package:flutter/material.dart';

import 'counter.dart';
import 'widget_bertingkat.dart';
import 'user_input_example.dart';
import 'dynamic_list_example.dart';
import 'navigasi_sederhana.dart';
import 'grid_view.dart';

void main() {
  runApp(const MyPortoApp());
}

class MyPortoApp extends StatelessWidget {
  const MyPortoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = -1;

  final List<String> menuList = [
    "Counter",
    "Widget Bertingkat",
    "User Input Example",
    "Dynamic List Example",
    "Navigasi Sederhana",
    "Grid View",
    "Tentang Saya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(57, 57, 57, 1),
        title: const Text("MyPorto", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            const Text(
              "Cek hasil karyaku disini:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: menuList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedIndex == index
                            ? const Color.fromARGB(255, 116, 116, 116)
                            : Colors.grey.shade300,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });

                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CounterPage(),
                            ),
                          );
                        }

                        if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const WidgetBertingkatPage(),
                            ),
                          );
                        }

                        if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserInputExample(),
                            ),
                          );
                        }

                        if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DynamicListExample(),
                            ),
                          );
                        }

                        if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NavigasiSederhana(),
                            ),
                          );
                        }

                        if (index == 5) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GridViewPage(),
                            ),
                          );
                        }

                        if (index == 6) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TentangSayaPage(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        menuList[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TentangSayaPage extends StatelessWidget {
  const TentangSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(57, 57, 57, 1),
        title: const Text(
          "Tentang Saya",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/nayla.jpg'),
              ),
              const SizedBox(height: 30),
              const Text("20241320034", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              const Text("NAYLA RABIA GUSTARI", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 50),
              const Text(
                "Saya adalah mahasiswa jurusan Sistem informasi di Universitas Kebangsaan Republik Indonesia.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
