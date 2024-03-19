import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showInputDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _showInputDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("Add new task"),
            content: const TextField(),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            actionsPadding: EdgeInsets.only(right: 12, bottom: 8, top: 4),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                child: const Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade500,
                    foregroundColor: Colors.white),
                child: const Text("Save"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
