import 'package:flutter/material.dart';

void main() {
  runApp(const SouqDrawApp());
}

class SouqDrawApp extends StatelessWidget {
  const SouqDrawApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سوق دراو',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سوق دراو'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.store, size: 80, color: Colors.teal),
            const SizedBox(height: 20),
            const Text(
              'مرحباً بك في سوق دراو!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // لاحقاً: التنقل لصفحة تسجيل الدخول أو المستخدم أو التاجر
              },
              child: const Text('ابدأ الآن'),
            ),
          ],
        ),
      ),
    );
  }
}
