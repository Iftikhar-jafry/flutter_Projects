import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final List<String> tasks; // 👈 received list

  const SecondScreen({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
          );
        },
      ),
    );
  }
}
